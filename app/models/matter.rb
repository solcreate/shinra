class Matter < ActiveRecord::Base
  has_many :links, class_name: 'Link', foreign_key: 'matter_id1'
  has_many :matters, through: :links, source: :matter2
  after_initialize do
    if self.data.nil?
      @hash = {}
    else
      @hash = JSON.parse(self.data)
    end
  end

  before_save do
    self.data = @hash.to_json
  end

  def initialize(hash=nil)
    super
    @hash = {}
    return if hash.nil?
    hash.each_pair do |k, v|
      k = k.to_sym
      @hash[k] = v
      make_new_member(k)
    end
  end

  def method_missing(mid, *args)
    method_name = mid.id2name
    if method_name.chomp!('=')
      if args.length != 1
        raise ArgumentError, "wrong number of arguments (#{args.length} for 1)", caller(1)
      end
      self.make_new_member(method_name)
      @hash[method_name.to_sym] = args[0]
      return
    end

    if args.length == 0
      @hash[method_name]
      return
    end

    raise NoMethodError, "undefined method `#{mid}' for #{self}", caller(1)
  end

  def make_new_member(name)
    name = name.to_sym
    return if respond_to?(name)
    define_singleton_method(name) { @hash[name] }
    define_singleton_method("#{name}=") { |x| @hash[name] = x }
  end

end

class Sample < ActiveRecord::Base
  def self.sm
    'class methodだよ'
  end

  def im
    'instance methodだよ'
  end

  def great(a:3, &block)
    a.times do
      block.call
    end
  end
end

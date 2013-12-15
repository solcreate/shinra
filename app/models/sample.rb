class Sample < ActiveRecord::Base
  def self.sm
    'class methodだよ'
  end

  def im
    'instance methodだよ'

  end
end

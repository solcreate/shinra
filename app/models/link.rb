class Link < ActiveRecord::Base
  belongs_to :matter1, :class_name => 'Matter', :foreign_key => 'matter_id1'
  belongs_to :matter2, :class_name => 'Matter', :foreign_key => 'matter_id2'
end

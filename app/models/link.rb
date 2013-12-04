class Link < ActiveRecord::Base
  belongs_to :entity
  belongs_to :link_to, :class_name => 'Entity', :foreign_key => 'link_to_id'
end

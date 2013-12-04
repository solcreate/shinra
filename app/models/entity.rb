class Entity < ActiveRecord::Base
  has_many :link_entities, :class_name => 'Link'
  has_many :links, through: :link_entities, source: :link_to
end

class Entity < ActiveRecord::Base
  belongs_to :project
  belongs_to :field
  has_many :fields
  has_many :entity_attributes
end

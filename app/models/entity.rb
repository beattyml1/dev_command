class Entity < ActiveRecord::Base
  belongs_to :project
  belongs_to :field
  has_many :fields
  has_many :entity_attributes
  has_many :enity_bases
end

class Field < ActiveRecord::Base
  belongs_to :entity
  has_many :field_attributes
end

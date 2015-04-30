class EntityAttribute < ActiveRecord::Base
  belongs_to :attribute
  belongs_to :entity
end

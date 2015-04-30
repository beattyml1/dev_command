class EnityBase < ActiveRecord::Base
  belongs_to :entity
  has_many :entities
end

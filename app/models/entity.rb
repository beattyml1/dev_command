class Entity < ActiveRecord::Base
  belongs_to :project
  belongs_to :field
end

class FieldAttribute < ActiveRecord::Base
  belongs_to :attribute
  belongs_to :field
end

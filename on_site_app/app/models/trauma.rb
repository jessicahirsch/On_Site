class Trauma < ApplicationRecord
  has_many :first_aid_items, through: :traumas_items
end

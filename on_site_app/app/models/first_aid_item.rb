class FirstAidItem < ApplicationRecord
  has_many :traumas, through: :traumas_items
end

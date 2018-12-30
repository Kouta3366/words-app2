class Card < ApplicationRecord
  validates :word, {presence:true, length:{maximum: 35}}
  validates :meaning, {presence:true, length:{maximum: 55}}
end

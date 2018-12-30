class List < ApplicationRecord
  validates :list_name, {presence:true, length:{maximum: 24}}
end

class Player < ApplicationRecord
  validates :first_name, :age, :presence => true
  validates :last_name, prescence: true, on: :create
end
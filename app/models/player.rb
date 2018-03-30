class Player < ApplicationRecord
  validates :first_name, :age, presence: true
  validates :last_name, presence: true, on: :create
end
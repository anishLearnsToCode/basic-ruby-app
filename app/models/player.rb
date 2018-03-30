class Player < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true, on: :create
  validates :age, :numericality => {greater_than: 0, less_than_or_equal_to: 130}
end
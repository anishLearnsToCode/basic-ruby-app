class Player < ApplicationRecord
  has_one :address
  belongs_to :team
  has_many :appearances
  has_many :games, through: :appearances

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :age, presence: true
  # validates :age, :numericality => {greater_than: 0, less_than_or_equal_to: 130}

  # Removing the custom validation as that wasn't required
    # validate :first_name, :first_name_starts_with_vowel
  #
  # def first_name_starts_with_vowel
  #   vowel = ['a', 'e', 'i', 'o', 'u']
  #   unless vowel.include? self.first_name[0].downcase
  #     errors.add(:first_name, 'must start with a vowel')
  #   end
  # end
end
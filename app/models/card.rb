class Card < ApplicationRecord
  belongs_to :customer

  validates :full_number, presence: true, length: {minimum: 16, maximum: 16}
  validates :balance_cents, :numericality => { :greater_than_or_equal_to => 0 }
end

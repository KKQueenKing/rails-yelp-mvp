class Restaurant < ApplicationRecord
  CUISINES = %w[chinese italian japanese french belgian]
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  # validates :phone_number, presence: true
  validates :category, inclusion: { in: CUISINES }
end

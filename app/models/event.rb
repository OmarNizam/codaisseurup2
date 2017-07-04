class Event < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :location, presence: false
  validates :price, presence: false
  validates :capacity, presence: false
  validates :includes_food, presence:false
  validates :includes_drinks, presence: false
  validates :starts_at, presence: false
  validates :ends_at, presence: false
  validates :active, presence: true
end

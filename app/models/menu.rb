class Menu < ApplicationRecord
  belongs_to :user
  has_many :schedules
  has_one_attached :image

  validates :name, presence: true
  validates :calorie, presence: true 
  validates :protein, presence: true
  validates :sugar, presence: true
  validates :lipid, presence: true
end

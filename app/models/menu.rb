class Menu < ApplicationRecord
  belongs_to :user
  has_many :schedules

  validates :name, presence: true
  validates :calorie, presence: true 
  validates :protein, presence: true
  validates :sugar, presence: true
  validates :lipid, presence: true
end

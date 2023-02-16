class Spec < ApplicationRecord
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :heigth
  belongs_to :gender
  belongs_to :age
  belongs_to :active_level

  validates :heigth_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :gender_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :age_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :active_level_id, numericality: { other_than: 1, message: "can't be blank" }
end

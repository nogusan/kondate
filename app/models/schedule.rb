class Schedule < ApplicationRecord
  belongs_to :user
  belongs_to :menu

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre_id

  validates :genre_id, numericality: { other_than: 1, message: "can't be blank" }
end

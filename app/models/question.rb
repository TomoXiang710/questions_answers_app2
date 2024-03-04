class Question < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: {maximum: 30}
  validates :content, presence: true
  has_many :answers, dependent: :destroy
end

class Question < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: {maximum: 30}
  validates :content, presence: true
  has_many :answers, dependent: :destroy

  def self.ransackable_attributes(auth_object = nil)
    ["content", "created_at", "id", "id_value", "solved", "title", "updated_at", "user_id"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["answers", "user"]
  end
end
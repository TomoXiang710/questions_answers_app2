class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question

  validates :content, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["content", "created_at", "id", "id_value", "question_id", "updated_at", "user_id"]
  end
end

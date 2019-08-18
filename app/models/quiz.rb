class Quiz < ApplicationRecord
  has_many   :questions, dependent: :destroy
  accepts_nested_attributes_for :questions
  belongs_to :user
  validates :title, presence: true
end
class Quiz < ApplicationRecord
  has_many   :questions
  accepts_nested_attributes_for :questions
  belongs_to :user
end
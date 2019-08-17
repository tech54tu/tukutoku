class Question < ApplicationRecord
  belongs_to :quiz
  belongs_to :user

  enum answer: ['○', '×']
end

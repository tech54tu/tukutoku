class ChangeDataAnswerToQuestions < ActiveRecord::Migration[5.2]
  def change
    change_column :questions, :answer, :integer
  end
end

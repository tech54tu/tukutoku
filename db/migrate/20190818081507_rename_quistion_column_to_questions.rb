class RenameQuistionColumnToQuestions < ActiveRecord::Migration[5.2]
  def change
    rename_column :questions, :quistion, :question
  end
end

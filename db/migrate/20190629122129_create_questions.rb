class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.text       :quistion, null: false
      t.boolean    :answer
      t.references :quiz
      t.timestamps
    end
  end
end

class CreateQuizzes < ActiveRecord::Migration[5.2]
  def change
    create_table :quizzes do |t|
      t.string :title,       null: false, unique: true
      t.text   :description
      t.string :image
      t.timestamps
    end
  end
end

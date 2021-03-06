class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :content
      t.references :user
      t.references :question
      t.integer :total_votes, default: 0
      t.boolean :accepted, default: false

      t.timestamps null: false
    end
  end
end

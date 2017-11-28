class CreateResponses < ActiveRecord::Migration[5.1]
  def change
    create_table :responses do |t|
      t.string :response
      t.boolean :best
      t.integer :user_id
      t.integer :question_id

      t.timestamps
    end
  end
end

class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.integer :count
      t.integer :user_id
      t.integer :question_id
      t.integer :response_id

      t.timestamps
    end
  end
end

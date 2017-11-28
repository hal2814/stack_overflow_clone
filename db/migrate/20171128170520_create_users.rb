class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_hash
      t.string :password_salt
      t.boolean :admin
      t.boolean :privilege

      t.timestamps
    end
  end
end

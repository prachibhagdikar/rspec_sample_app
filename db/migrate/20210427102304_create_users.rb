class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :city
      t.boolean :is_admin
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
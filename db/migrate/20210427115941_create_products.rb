class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :price
      t.text :description
      t.string :type

      t.timestamps null: false
    end
  end
end

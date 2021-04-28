class AddColumnsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :available, :boolean
    add_column :products, :category, :string
  end
end

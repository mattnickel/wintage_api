class RenameStringToProductDescription < ActiveRecord::Migration[6.1]
  def change
    rename_column :products, :string, :product_description
  end
end

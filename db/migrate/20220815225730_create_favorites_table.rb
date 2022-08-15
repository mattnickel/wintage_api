class CreateFavoritesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.references :user
      t.boolean :heart
      t.references :product
      t.timestamps
    end
  end
end

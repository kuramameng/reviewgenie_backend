#
class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :asin
      t.string :img_url
      t.string :category
      t.text :description
      t.decimal :price, :precision => 8, :scale => 2

      t.timestamps null: false
    end
  end
end

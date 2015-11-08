class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :nickname
      t.string :website
      t.string :phone

      t.string :gender
      t.string :location

      t.string :birthday
      t.string :interest

      t.string :profile_image_url
      t.string :status

      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

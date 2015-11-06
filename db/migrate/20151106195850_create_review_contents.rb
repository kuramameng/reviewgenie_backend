class CreateReviewContents < ActiveRecord::Migration
  def change
    create_table :review_contents do |t|
      t.string :reviewerName
      t.text :content

      t.timestamps null: false
    end
  end
end

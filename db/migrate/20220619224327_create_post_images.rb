class CreatePostImages < ActiveRecord::Migration[6.1]
  def change
    create_table :post_images do |t|
      t.string :shopname
      t.text :caption
      t.integer :user_id
      t.timestamps
    end
  end
end

class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string       :title
      t.references   :user
      t.references   :category
      t.string       :price
      t.string       :description
      t.string       :email
      t.string       :edit_key
      t.timestamps
    end
  end
end

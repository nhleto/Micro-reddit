class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :author_name
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

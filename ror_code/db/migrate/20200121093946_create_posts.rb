class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.boolean :is_public
      t.references :user

      t.timestamps
    end
  end
end

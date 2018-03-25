class CreateCategorycomments < ActiveRecord::Migration[5.1]
  def change
    create_table :categorycomments do |t|
      t.string :text
      t.integer :category_id
      t.integer :user_id

      t.timestamps
    end
  end
end

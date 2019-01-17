class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.belongs_to :user #automatically makes user_id column
      t.belongs_to :post
      t.timestamps null: false
    end
  end
end

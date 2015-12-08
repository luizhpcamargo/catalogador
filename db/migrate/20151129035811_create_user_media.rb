class CreateUserMedia < ActiveRecord::Migration
  def change
    create_table :user_media do |t|
      t.integer :user_id
      t.integer :media_id
      t.string  :loaned_to
      t.decimal :price
      t.decimal :sell_price

      t.timestamps null: false
    end
  end
end

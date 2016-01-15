class CreateUserMedia < ActiveRecord::Migration
  def change
    create_table :user_media do |t|
      t.integer :user_id
      t.integer :media_id
      t.decimal :price
      t.decimal :sell_price
      t.string  :place
      t.string  :state
      t.date    :acquired_at
      t.date    :emitted_at
      t.string  :loaned_to

      t.timestamps null: false
    end
  end
end

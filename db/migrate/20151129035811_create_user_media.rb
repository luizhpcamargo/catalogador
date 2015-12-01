class CreateUserMedia < ActiveRecord::Migration
  def change
    create_table :user_media do |t|
      t.integer :user_id
      t.integer :media_id
      t.timestamps null: false
    end
  end
end

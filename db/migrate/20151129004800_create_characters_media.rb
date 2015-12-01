class CreateCharactersMedia < ActiveRecord::Migration
  def change
    create_table :characters_media do |t|
      t.integer :media_id
      t.integer :character_id
      t.integer :character_role_id

      t.timestamps null: false
    end
  end
end

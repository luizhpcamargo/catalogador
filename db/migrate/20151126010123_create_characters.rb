class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string     :name
      t.string     :codename
      t.string     :role
      t.string     :type
      t.date       :birth
   	  t.string     :description
      t.timestamps null: false
    end
  end
end

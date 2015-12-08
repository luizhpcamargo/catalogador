class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string     :name
      t.string     :login
      t.string     :state
      t.timestamps null: false
    end
  end
end

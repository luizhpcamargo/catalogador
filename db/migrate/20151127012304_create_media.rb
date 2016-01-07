class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string  :title
      t.string  :subtitle
      t.decimal :value
      t.string  :description
      t.string  :file
      t.string  :format
      t.string  :size
      t.string  :place
      t.string  :barcode
      t.string  :state
      t.decimal :price
      t.string  :loaned_to

      t.timestamps null: false
    end
  end
end

class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string  :title
      t.string  :subtitle
      t.string  :original_title
      t.string  :original_subtitle
      t.decimal :value
      t.string  :description
      t.string  :file
      t.string  :format
      t.string  :size
      t.string  :barcode

      t.timestamps null: false
    end
  end
end

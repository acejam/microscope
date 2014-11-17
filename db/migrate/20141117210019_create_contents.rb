class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.integer :size
      t.integer :compression
      t.string :mimeType
      t.text :text
      t.text :comment

      t.timestamps
    end
  end
end

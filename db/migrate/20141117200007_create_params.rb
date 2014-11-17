class CreateParams < ActiveRecord::Migration
  def change
    create_table :params do |t|
      t.string :name
      t.string :value
      t.string :fileName
      t.string :contentType
      t.text :comment
      t.references :postData, index: true

      t.timestamps
    end
  end
end

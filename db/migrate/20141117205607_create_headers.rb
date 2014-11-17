class CreateHeaders < ActiveRecord::Migration
  def change
    create_table :headers do |t|
      t.text :name
      t.text :value
      t.text :comment
      t.references :request, index: true
      t.references :response, index: true

      t.timestamps
    end
  end
end

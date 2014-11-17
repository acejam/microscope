class CreateQueryStrings < ActiveRecord::Migration
  def change
    create_table :query_strings do |t|
      t.text :name
      t.text :value
      t.text :comment
      t.references :request, index: true

      t.timestamps
    end
  end
end

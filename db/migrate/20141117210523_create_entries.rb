class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :pageref
      t.datetime :startedDateTime
      t.integer :time
      t.references :request, index: true
      t.references :response, index: true
      t.references :cache, index: true
      t.references :timings, index: true
      t.string :serverIPAddress
      t.string :connection
      t.text :comment

      t.timestamps
    end
  end
end

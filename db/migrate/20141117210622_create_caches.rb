class CreateCaches < ActiveRecord::Migration
  def change
    create_table :caches do |t|
      t.text :beforeRequest
      t.text :afterRequest
      t.text :comment

      t.timestamps
    end
  end
end

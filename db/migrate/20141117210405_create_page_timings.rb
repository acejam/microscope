class CreatePageTimings < ActiveRecord::Migration
  def change
    create_table :page_timings do |t|
      t.integer :onContentLoad
      t.integer :onLoad
      t.text :comment

      t.timestamps
    end
  end
end

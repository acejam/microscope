class CreateTimings < ActiveRecord::Migration
  def change
    create_table :timings do |t|
      t.integer :blocked
      t.integer :dns
      t.integer :connect
      t.integer :send
      t.integer :wait
      t.integer :receive
      t.integer :ssl
      t.text :comment

      t.timestamps
    end
  end
end

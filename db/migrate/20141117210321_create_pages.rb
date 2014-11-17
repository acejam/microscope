class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.datetime :startedDateTime
      t.string :idx
      t.string :title
      t.references :pageTimings, index: true
      t.text :comment

      t.timestamps
    end
  end
end

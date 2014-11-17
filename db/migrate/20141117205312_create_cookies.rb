class CreateCookies < ActiveRecord::Migration
  def change
    create_table :cookies do |t|
      t.string :name
      t.text :value
      t.string :path
      t.string :domain
      t.datetime :expires
      t.boolean :httpOnly
      t.boolean :secure
      t.text :comment

      t.timestamps
    end
  end
end

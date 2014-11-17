class CreateHars < ActiveRecord::Migration
  def change
    create_table :hars do |t|
      t.string :uri
      t.binary :pages
      t.binary :entries
      t.binary :file

      t.timestamps
    end
  end
end

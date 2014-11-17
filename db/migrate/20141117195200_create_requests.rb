class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :method
      t.string :url
      t.string :httpVersion
      t.references :cookies, index: true
      t.references :headers, index: true
      t.references :queryString, index: true
      t.references :postData, index: true
      t.integer :headersSize
      t.integer :bodySize
      t.text :comment

      t.timestamps
    end
  end
end

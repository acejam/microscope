class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :status
      t.string :statusText
      t.string :httpVersion
      t.references :cookies, index: true
      t.references :headers, index: true
      t.references :content, index: true
      t.string :redirectURL
      t.integer :headersSize
      t.integer :bodySize
      t.text :comment

      t.timestamps
    end
  end
end

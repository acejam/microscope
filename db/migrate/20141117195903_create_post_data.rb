class CreatePostData < ActiveRecord::Migration
  def change
    create_table :post_data do |t|
      t.string :mimeType
      t.text :params
      t.text :text
      t.text :comment
      t.references :request, index: true
      t.references :params, index: true

      t.timestamps
    end
  end
end

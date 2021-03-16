class CreateArticle < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.references :u, foreign_key: {to_table: 'users'}
      t.string :a_title
      t.string :a_image_url
      t.text :a_content
      t.integer :a_status
      t.timestamps
      t.datetime :a_log
    end
  end
end

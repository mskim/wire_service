class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.date :date
      t.string :reporter
      t.string :group
      t.string :title
      t.string :subtitle
      t.string :quote
      t.text :body
      t.integer :char_count
      t.boolean :draft
      t.time :sent
      t.references :user, foreign_key: true
      t.integer :page
      t.integer :order
      t.string :path

      t.timestamps
    end
  end
end

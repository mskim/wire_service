class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :group
      t.string :cell

      t.timestamps
    end
  end
end

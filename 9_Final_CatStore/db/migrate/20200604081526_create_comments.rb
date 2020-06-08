class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :first_name
      t.text :body
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end

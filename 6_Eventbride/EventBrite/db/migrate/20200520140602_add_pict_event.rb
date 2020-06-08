class AddPictEvent < ActiveRecord::Migration[5.2]
  def change
    change_table :events do |t|
      t.string :picture
    end
  end
end

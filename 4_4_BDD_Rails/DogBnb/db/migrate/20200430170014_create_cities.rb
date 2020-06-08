class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.string :city_name

      t.timestamps
    end
  end
end

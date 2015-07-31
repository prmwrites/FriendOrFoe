class CreateCountries < ActiveRecord::Migration
  def change
    drop_table :countries
    create_table :countries do |t|
      t.string :name
      t.string :opinion_of_usa
      t.timestamps null: false
    end
  end
end


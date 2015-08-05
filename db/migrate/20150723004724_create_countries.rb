class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.string :opinion_of_usa
      t.integer :nato_member
      t.timestamps null: false
    end
  end
end


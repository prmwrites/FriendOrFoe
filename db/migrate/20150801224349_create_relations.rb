class CreateRelations < ActiveRecord::Migration
  def change
    create_table :relations do |t|
      t.string :name
			t.integer :country_id
      t.timestamps null: false
    end
  end
end

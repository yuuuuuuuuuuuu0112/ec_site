class CreateHouseMakers < ActiveRecord::Migration[5.2]
  def change
    create_table :house_makers do |t|
      t.string :name

      t.timestamps
    end
  end
end

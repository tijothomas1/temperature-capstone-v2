class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table :measurements do |t|
      t.decimal :reading, precision: 5, scale: 2
      t.boolean :data_type

      t.timestamps
    end
  end
end

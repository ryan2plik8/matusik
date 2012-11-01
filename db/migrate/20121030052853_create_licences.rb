class CreateLicences < ActiveRecord::Migration
  def change
    create_table :licences do |t|
      t.text :licence_name

      t.timestamps
    end
  end
end

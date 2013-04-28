class CreateAlarms < ActiveRecord::Migration
  def change
    create_table :alarms do |t|
      t.string :service, unique: true, null: false
      t.string :severity, null: false
      t.boolean :status, null: false, default: true

      t.timestamps
    end
  end
end

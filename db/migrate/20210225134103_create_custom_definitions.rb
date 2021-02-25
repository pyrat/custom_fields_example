class CreateCustomDefinitions < ActiveRecord::Migration[6.1]
  def change
    create_table :custom_definitions do |t|
      t.string :name
      t.integer :site_id
      t.string :report_type

      t.timestamps
    end
  end
end

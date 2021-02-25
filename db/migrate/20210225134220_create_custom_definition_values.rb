class CreateCustomDefinitionValues < ActiveRecord::Migration[6.1]
  def change
    create_table :custom_definition_values do |t|
      t.integer :custom_definition_id
      t.string :content
      t.integer :report_id

      t.timestamps
    end
  end
end

class AddReportTypeIdToCustomDefinitions < ActiveRecord::Migration[6.1]
  def change
    add_column :custom_definitions, :report_type_id, :integer
  end
end

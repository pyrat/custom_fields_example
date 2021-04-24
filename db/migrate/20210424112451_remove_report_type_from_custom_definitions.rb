class RemoveReportTypeFromCustomDefinitions < ActiveRecord::Migration[6.1]
  def change
    remove_column :custom_definitions, :report_type
  end
end

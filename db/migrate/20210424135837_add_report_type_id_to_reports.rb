class AddReportTypeIdToReports < ActiveRecord::Migration[6.1]
  def change
    add_column :reports, :report_type_id, :integer
    add_index :reports, :report_type_id
  end
end

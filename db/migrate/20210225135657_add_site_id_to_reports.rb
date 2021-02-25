class AddSiteIdToReports < ActiveRecord::Migration[6.1]
  def change
    add_column :reports, :site_id, :integer
  end
end

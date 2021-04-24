module ApplicationHelper
  def report_types
    ReportType.all.map do |r|
      [r.name, r.id]
    end
  end
end

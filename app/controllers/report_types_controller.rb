class ReportTypesController < ApplicationController
  def index
    @report_types = ReportType.all
  end

  def new
    @report_type = ReportType.new
  end

  def create
    @report_type = ReportType.new report_type_params
    if @report_type.save
      redirect_to sites_path
    else
      render 'new'
    end
  end

  protected

  def report_type_params
    params.require(:report_type).permit(:name)
  end
end

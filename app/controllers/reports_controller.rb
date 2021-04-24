class ReportsController < ApplicationController
  before_action :set_report, only: %i[show edit update destroy]
  before_action :set_site

  # GET /reports or /reports.json
  def index
    @reports = Report.all
  end

  # GET /reports/1 or /reports/1.json
  def show; end

  # GET /reports/new
  def new
    report_type = ReportType.find params[:report_type_id]
    @report = @site.reports.new
    @report.report_type = report_type
    @site.custom_definitions.where(report_type_id: report_type.id).each do |defn|
      @report.custom_definition_values.build(custom_definition_id: defn.id)
    end
    p @report.inspect
    p @report.custom_definition_values
  end

  # GET /reports/1/edit
  def edit; end

  # POST /reports or /reports.json
  def create
    @report = @site.reports.new(report_params)
    if @report.save
      redirect_to @site
    else
      @report.site.custom_definitions.where(report_type: @report.class.to_s).each do |defn|
        @report.custom_definition_values.build(custom_definition_id: defn.id)
      end
      render 'new'
    end
  end

  # PATCH/PUT /reports/1 or /reports/1.json
  def update
    respond_to do |format|
      if @report.update(report_params)
        format.html { redirect_to @report, notice: 'Report was successfully updated.' }
        format.json { render :show, status: :ok, location: @report }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reports/1 or /reports/1.json
  def destroy
    @report.destroy
    redirect_to @site
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_report
    @report = Report.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def report_params
    params.require(:report).permit(:name, :report_type_id,
                                   custom_definition_values_attributes: %i[id custom_definition_id content])
  end
end

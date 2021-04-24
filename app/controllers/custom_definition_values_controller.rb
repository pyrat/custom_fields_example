class CustomDefinitionValuesController < ApplicationController
  before_action :set_custom_definition_value, only: %i[show edit update destroy]
  before_action :set_site

  # GET /custom_definition_values or /custom_definition_values.json
  def index
    @custom_definition_values = CustomDefinitionValue.all
  end

  # GET /custom_definition_values/1 or /custom_definition_values/1.json
  def show; end

  # GET /custom_definition_values/new
  def new
    @custom_definition_value = CustomDefinitionValue.new
  end

  # GET /custom_definition_values/1/edit
  def edit; end

  # POST /custom_definition_values or /custom_definition_values.json
  def create
    @custom_definition_value = CustomDefinitionValue.new(custom_definition_value_params)

    respond_to do |format|
      if @custom_definition_value.save
        format.html do
          redirect_to @custom_definition_value, notice: 'Custom definition value was successfully created.'
        end
        format.json { render :show, status: :created, location: @custom_definition_value }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @custom_definition_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custom_definition_values/1 or /custom_definition_values/1.json
  def update
    respond_to do |format|
      if @custom_definition_value.update(custom_definition_value_params)
        format.html do
          redirect_to @custom_definition_value, notice: 'Custom definition value was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @custom_definition_value }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @custom_definition_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_definition_values/1 or /custom_definition_values/1.json
  def destroy
    @custom_definition_value.destroy
    respond_to do |format|
      format.html do
        redirect_to custom_definition_values_url, notice: 'Custom definition value was successfully destroyed.'
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_custom_definition_value
    @custom_definition_value = CustomDefinitionValue.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def custom_definition_value_params
    params.require(:custom_definition_value).permit(:custom_definition_id, :content, :report_id)
  end
end

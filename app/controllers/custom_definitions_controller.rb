class CustomDefinitionsController < ApplicationController
  before_action :set_custom_definition, only: %i[show edit update destroy]
  before_action :set_site

  # GET /custom_definitions or /custom_definitions.json
  def index
    @custom_definitions = CustomDefinition.all
  end

  # GET /custom_definitions/1 or /custom_definitions/1.json
  def show; end

  # GET /custom_definitions/new
  def new
    @custom_definition = @site.custom_definitions.new
  end

  # GET /custom_definitions/1/edit
  def edit; end

  # POST /custom_definitions or /custom_definitions.json
  def create
    @custom_definition = @site.custom_definitions.new(custom_definition_params)

    if @custom_definition.save
      redirect_to @site
    else
      render 'new'
    end
  end

  # PATCH/PUT /custom_definitions/1 or /custom_definitions/1.json
  def update
    respond_to do |format|
      if @custom_definition.update(custom_definition_params)
        format.html { redirect_to @custom_definition, notice: 'Custom definition was successfully updated.' }
        format.json { render :show, status: :ok, location: @custom_definition }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @custom_definition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_definitions/1 or /custom_definitions/1.json
  def destroy
    @custom_definition.destroy
    redirect_to @site
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_custom_definition
    @custom_definition = CustomDefinition.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def custom_definition_params
    params.require(:custom_definition).permit(:name, :report_type_id)
  end
end

class AccessoryTypesController < ApplicationController
  layout 'admin'
  before_action :set_accessory_type, only: [:show, :edit, :update, :destroy]

  # GET /accessory_types
  # GET /accessory_types.json
  def index
    @accessory_types = AccessoryType.all
  end

  # GET /accessory_types/1
  # GET /accessory_types/1.json
  def show
  end

  # GET /accessory_types/new
  def new
    @accessory_type = AccessoryType.new
  end

  # GET /accessory_types/1/edit
  def edit
  end

  # POST /accessory_types
  # POST /accessory_types.json
  def create
    @accessory_type = AccessoryType.new(accessory_type_params)

    respond_to do |format|
      if @accessory_type.save
        format.html { redirect_to @accessory_type, notice: 'Accessory type was successfully created.' }
        format.json { render :show, status: :created, location: @accessory_type }
      else
        format.html { render :new }
        format.json { render json: @accessory_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accessory_types/1
  # PATCH/PUT /accessory_types/1.json
  def update
    respond_to do |format|
      if @accessory_type.update(accessory_type_params)
        format.html { redirect_to @accessory_type, notice: 'Accessory type was successfully updated.' }
        format.json { render :show, status: :ok, location: @accessory_type }
      else
        format.html { render :edit }
        format.json { render json: @accessory_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accessory_types/1
  # DELETE /accessory_types/1.json
  def destroy
    @accessory_type.destroy
    respond_to do |format|
      format.html { redirect_to accessory_types_url, notice: 'Accessory type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accessory_type
      @accessory_type = AccessoryType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def accessory_type_params
      params.require(:accessory_type).permit(:name, :accessory_id)
    end
end

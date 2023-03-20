class Property1sController < ApplicationController
  before_action :set_property1, only: %i[ show edit update destroy ]

  # GET /property1s or /property1s.json
  def index
    @property1s = Property1.all
  end

  # GET /property1s/1 or /property1s/1.json
  def show
  end

  # GET /property1s/new
  def new
    @property1 = Property1.new
  end

  # GET /property1s/1/edit
  def edit
  end

  # POST /property1s or /property1s.json
  def create
    @property1 = Property1.new(property1_params)

    respond_to do |format|
      if @property1.save
        format.html { redirect_to property1_url(@property1), notice: "Property1 was successfully created." }
        format.json { render :show, status: :created, location: @property1 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @property1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property1s/1 or /property1s/1.json
  def update
    respond_to do |format|
      if @property1.update(property1_params)
        format.html { redirect_to property1_url(@property1), notice: "Property1 was successfully updated." }
        format.json { render :show, status: :ok, location: @property1 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @property1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property1s/1 or /property1s/1.json
  def destroy
    @property1.destroy

    respond_to do |format|
      format.html { redirect_to property1s_url, notice: "Property1 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property1
      @property1 = Property1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def property1_params
      params.require(:property1).permit(:name, :address, :price, :rooms, :bathrooms)
    end
end

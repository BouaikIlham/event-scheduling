class MettingsController < ApplicationController
  before_action :set_metting, only: %i[ show edit update destroy ]

  # GET /mettings or /mettings.json
  def index
    @mettings = Metting.all
  end

  # GET /mettings/1 or /mettings/1.json
  def show
  end

  # GET /mettings/new
  def new
    @metting = Metting.new
  end

  # GET /mettings/1/edit
  def edit
  end

  # POST /mettings or /mettings.json
  def create
    @metting = Metting.new(metting_params)

    respond_to do |format|
      if @metting.save
        format.html { redirect_to metting_url(@metting), notice: "Metting was successfully created." }
        format.json { render :show, status: :created, location: @metting }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @metting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mettings/1 or /mettings/1.json
  def update
    respond_to do |format|
      if @metting.update(metting_params)
        format.html { redirect_to metting_url(@metting), notice: "Metting was successfully updated." }
        format.json { render :show, status: :ok, location: @metting }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @metting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mettings/1 or /mettings/1.json
  def destroy
    @metting.destroy

    respond_to do |format|
      format.html { redirect_to mettings_url, notice: "Metting was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metting
      @metting = Metting.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def metting_params
      params.require(:metting).permit(:name, :start_time, :end_time, :user_id)
    end
end

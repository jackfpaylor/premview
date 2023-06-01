class NormanpdsController < ApplicationController
  before_action :set_normanpd, only: %i[ show edit update destroy ]

  # GET /normanpds or /normanpds.json
  def index
    @normanpds = Normanpd.all
  end

  # GET /normanpds/1 or /normanpds/1.json
  def show
  end

  # GET /normanpds/new
  def new
    @normanpd = Normanpd.new
  end

  # GET /normanpds/1/edit
  def edit
  end

  # POST /normanpds or /normanpds.json
  def create
    @normanpd = Normanpd.new(normanpd_params)

    respond_to do |format|
      if @normanpd.save
        format.html { redirect_to normanpd_url(@normanpd), notice: "Normanpd was successfully created." }
        format.json { render :show, status: :created, location: @normanpd }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @normanpd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /normanpds/1 or /normanpds/1.json
  def update
    respond_to do |format|
      if @normanpd.update(normanpd_params)
        format.html { redirect_to normanpd_url(@normanpd), notice: "Normanpd was successfully updated." }
        format.json { render :show, status: :ok, location: @normanpd }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @normanpd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /normanpds/1 or /normanpds/1.json
  def destroy
    @normanpd.destroy

    respond_to do |format|
      format.html { redirect_to normanpds_url, notice: "Normanpd was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_normanpd
      @normanpd = Normanpd.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def normanpd_params
      params.require(:normanpd).permit(:first_name, :last_name, :business, :address1, :address2, :city, :state, :zip, :email, :phone1, :phone2, :gatecode, :notes)
    end

  # Need to work on list controller part for sorting
  def list
    normanpds = Normanpds.includes(:business).order("#{params[:column]} asc")
    render(partial: 'normanpd', locals: { normanpds: normanpds })
  end

end

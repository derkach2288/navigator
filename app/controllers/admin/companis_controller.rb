class Admin::CompanisController < ApplicationController
  before_action :set_compani, only: %i[ show edit update destroy ]

  # GET /admin/companis or /admin/companis.json
  def index
    @companis = Compani.all
  end

  # GET /admin/companis/1 or /admin/companis/1.json
  def show
  end

  # GET /admin/companis/new
  def new
    @compani = Compani.new
  end

  # GET /admin/companis/1/edit
  def edit
  end

  # POST /admin/companis or /admin/companis.json
  def create
    @compani = Compani.new(compani_params)

    respond_to do |format|
      if @compani.save
        format.html { redirect_to admin_compani_url(@compani), notice: "Compani was successfully created." }
        format.json { render :show, status: :created, location: @compani }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @compani.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/companis/1 or /admin/companis/1.json
  def update
    respond_to do |format|
      if @compani.update(compani_params)
        format.html { redirect_to admin_compani_url(@compani), notice: "Compani was successfully updated." }
        format.json { render :show, status: :ok, location: @compani }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @compani.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/companis/1 or /admin/companis/1.json
  def destroy
    @compani.destroy

    respond_to do |format|
      format.html { redirect_to admin_companis_url, notice: "Compani was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compani
      @compani = Compani.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def compani_params
      params.fetch(:compani, {})
    end
end

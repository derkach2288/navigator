class Admin::CompanisController < ApplicationController
  before_action :set_compani, only: %i[ show edit update destroy ]

  def index
    @companis = Compani.all
  end

  def new
    @compani = Compani.new
  end

  def edit
  end

  def create
    @compani = Compani.new(compani_params)

      if @compani.save
        redirect_to admin_companis_url, notice: "Compani was successfully created."
      else
        render :new, status: :unprocessable_entity 
      end
  end

  def update
      if @compani.update(compani_params)
        redirect_to admin_companis_url, notice: "Compani was successfully updated."
      else
        render :edit, status: :unprocessable_entity
      end
  end

  def destroy
    @compani.destroy

      redirect_to admin_companis_url, notice: "Compani was successfully destroyed."
  end

  private
    def set_compani
      @compani = Compani.find(params[:id])
    end

    def compani_params
      params.require(:compani).permit(:companiname)
    end
end

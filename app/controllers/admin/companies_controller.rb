class Admin::CompaniesController < ApplicationController
  before_action :set_company, only: %i[ show edit update destroy ]

  def index
    @companies = Company.all
    authorize @companies
  end

  def new
    @company = Company.new
    authorize @company
  end

  def edit
    authorize @company
  end

  def create
    @company = Company.new(company_params)

      if @company.save
        redirect_to admin_companies_url, notice: "Company was successfully created."
      else
        render :new, status: :unprocessable_entity 
      end
  end

  def update
      if @company.update(company_params)
        redirect_to admin_companies_url, notice: "Company was successfully updated."
      else
        render :edit, status: :unprocessable_entity
      end
  end

  def destroy
    authorize @company
    @company.destroy
    

      redirect_to admin_companies_url, notice: "Compani was successfully destroyed."
  end

  private
    def set_company
      @company = Company.find(params[:id])
    end

    def company_params
      params.require(:company).permit(:name)
    end
end

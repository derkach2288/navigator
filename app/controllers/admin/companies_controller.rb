class Admin::CompaniesController < ApplicationController
  before_action :set_company, only: %i[ show edit update destroy ]

  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
  end

  def edit
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
    @company.destroy

      redirect_to admin_companies_url, notice: "Compani was successfully destroyed."
  end

  private
    def set_company
      @company = Company.find(params[:id])
    end

    def company_params
      params.require(:company).permit(:companiname)
    end
end

class CompaniesController < ApplicationController

  def create
    company = Company.new(company_params)

    if company.save
      render json: company, status: :created
    else
      render json: company.errors, status: :unprocessable_entity
    end
  end

  def show
    company = Company.find(params[:id])
    render json: company
  end

  private

  def company_params
    params.require(:company).permit(:name, :email, :logo, :address, :neighboorhood,
    :zipcode, :city, :state, :country, :description, :phone, :website, :cause, :user_id)
  end
end

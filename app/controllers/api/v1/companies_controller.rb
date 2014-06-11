class Api::V1::CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]

  respond_to :json

  # GET /companies
  def index
    @companies = Company.all.limit(25)

    respond_with @companies
  end

  # GET /companies/1
  def show
    respond_with @company
  end

  # POST /companies
  def create
    @company = Company.new(company_params)

    if @company.save
      respond_with(@company, status: :created, location: [:api, :v1, @company])
    else
      render json: @company.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /companies/1
  def update
    if @company.update(company_params)
      head :no_content
    else
      render json: @company.errors, status: :unprocessable_entity
    end
  end

  # DELETE /companies/1
  def destroy
    @company.destroy

    head :no_content
  end


  private
  def set_company
    @company = Company.find(params[:id])
  end

  def company_params
    params.require(:company).permit(:title, :description, :location, :workers)
  end
end

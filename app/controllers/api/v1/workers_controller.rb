class Api::V1::WorkersController < ApplicationController
  before_action :set_worker, only: [:show, :edit, :update, :destroy]

  respond_to :json

  # GET /workers
  def index
    @workers = Worker.all.limit(15)

    # if params[:company_id]
    #   @workers = @workers.where(company_id: params[:company_id])
    # end

    # if params[:ids]
    #   @workers = @workers.where(id: params[:ids])
    # end

    respond_with @workers
  end

  # GET /workers/1
  def show
    respond_with @worker
  end

  # POST /workers
  def create
    @worker = Worker.new(worker_params)

    if @worker.save
      respond_with(@worker, status: :created, location: [:api, :v1, @worker])
    else
      render json: @worker.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /workers/1
  def update
    if @worker.update(worker_params)
      head :no_content
    else
      render json: @worker.errors, status: :unprocessable_entity
    end
  end

  # DELETE /workers/1
  def destroy
    @worker.destroy

    head :no_content
  end

  private
    def set_worker
      @worker = Worker.find(params[:id])
    end

    def worker_params
      params.require(:worker).permit(:name, :age, :position, :created_at)
    end
end

class PermitsController < ApplicationController
  before_action :set_permit, only: %i[ show update destroy ]

  # GET /permits
  def index
    @permits = Permit.all

    render json: @permits
  end

  # GET /permits/1
  def show
    render json: @permit
  end

  # POST /permits
  def create
    @permit = Permit.new(permit_params)

    if @permit.save
      render json: @permit, status: :created, location: @permit
    else
      render json: @permit.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /permits/1
  def update
    if @permit.update(permit_params)
      render json: @permit
    else
      render json: @permit.errors, status: :unprocessable_entity
    end
  end

  # DELETE /permits/1
  def destroy
    @permit.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_permit
      @permit = Permit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def permit_params
      params.require(:permit).permit(:title, :cost)
    end
end

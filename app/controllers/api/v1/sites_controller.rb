class Api::V1::SitesController < ApplicationController
  before_action :set_site, only: %i[ show update destroy ]

  # GET /sites
  def index
    # generalize to any params present and then narrow
    if params[:location_id].present?
      # look for and return shoot type and tag in the below as well. Needs to be flexible but param specific.
      search_index(params[:location_id])
    else
      @sites = Site.all
      render json: @sites
    end
  end

  def search_index(location_id)
    @sites = Site.by_location(location_id)

    render json: @sites
  end

  # GET /sites/1
  def show
    render json: @site
  end

  # POST /sites
  def create
    @site = Site.new(site_params)

    if @site.save
      render json: @site, status: :created

    #   TODO: create SiteTag relationship
    else
      render json: @site.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sites/1
  def update
    if @site.update(site_params)
      # if updating the tags param then we will need to create/destroy SiteTags
      render json: @site
    else
      render json: @site.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sites/1
  def destroy
    @site.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_site
      @site = Site.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def site_params
      params.require(:site).permit(:name, :description, :needs_permit, :notes, :location_id)
    end
end

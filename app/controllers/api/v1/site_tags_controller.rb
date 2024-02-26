class Api::V1::SiteTagsController < ApplicationController
  before_action :set_site_tag, only: %i[ destroy ]

  def create
    @site_tag = SiteTag.new(site_tag_params)

    if @site_tag.save
      render json: @site_tag, status: :created
    else
      render json: @site_tag.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @site_tag.destroy!
  end

  private

  def set_site_tag
    @site_tag = SiteTag.find(params[:id])
  end

  def site_tag_params
    params.require(:site_tag).permit(:site_id, :tag_id)
  end
end

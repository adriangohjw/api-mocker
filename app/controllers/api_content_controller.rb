# frozen_string_literal: true

require 'json'

class ApiContentController < ActionController::Base
  def show
    @api_content = ApiContent.find(params[:id])
    render json: @api_content.content
  end

  def create
    api_content = ApiContent.new(
      title: create_params[:title],
      content: JSON.parse(create_params[:content]).to_json
    )
    api_content.save!
  rescue StandardError => e
    flash.notice = e.message
  ensure
    redirect_to root_path
  end

  private

  def create_params
    params.permit(:title, :content)
  end
end

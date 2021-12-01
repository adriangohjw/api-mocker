# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def index
    @api_contents = ApiContent.order(created_at: :desc).first(100)
  end

  def show
    @api_content = ApiContent.find(params[:id])
    render json: @api_content.content.to_json
  end
end

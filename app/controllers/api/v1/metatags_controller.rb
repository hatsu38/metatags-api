module Api
  module V1
    class MetatagsController < ApplicationController
      def index
        @metatags = Metatag.order(id: :desc).page(params[:page] ||= 1).per(12)
        render json: { metatags: @metatags }
      end

      def show
        @metatag = Metatag.find_by(id: params[:id])
        render json: { metatag: @metatag }
      end
    end
  end
end
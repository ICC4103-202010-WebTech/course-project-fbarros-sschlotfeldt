module Api
  module V1
    class ProfilePagesController < ApplicationController
      before_action :set_profile_page, only: [:show, :update, :destroy]

      # GET /profile_pages
      def index
        @profile_pages = ProfilePage.all

        render json: @profile_pages
      end

      # GET /profile_pages/1
      def show
        render json: @profile_page
      end

      # POST /profile_pages
      def create
        @profile_page = ProfilePage.new(profile_page_params)

        if @profile_page.save
          render json: @profile_page, status: :created, location: @profile_page
        else
          render json: @profile_page.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /profile_pages/1
      def update
        if @profile_page.update(profile_page_params)
          render json: @profile_page
        else
          render json: @profile_page.errors, status: :unprocessable_entity
        end
      end

      # DELETE /profile_pages/1
      def destroy
        @profile_page.destroy
      end

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_profile_page
        @profile_page = ProfilePage.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def profile_page_params
        params.fetch(:profile_page, {})
      end
    end
  end
end


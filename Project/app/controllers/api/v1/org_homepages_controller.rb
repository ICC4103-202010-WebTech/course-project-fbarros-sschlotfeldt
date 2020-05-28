module Api
  module V1
    class OrgHomepagesController < ApplicationController
      before_action :set_org_homepage, only: [:show, :update, :destroy]

      # GET /org_homepages
      def index
        @org_homepages = OrgHomepage.all

        render json: @org_homepages
      end

      # GET /org_homepages/1
      def show
        render json: @org_homepage
      end

      # POST /org_homepages
      def create
        @org_homepage = OrgHomepage.new(org_homepage_params)

        if @org_homepage.save
          render json: @org_homepage, status: :created, location: @org_homepage
        else
          render json: @org_homepage.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /org_homepages/1
      def update
        if @org_homepage.update(org_homepage_params)
          render json: @org_homepage
        else
          render json: @org_homepage.errors, status: :unprocessable_entity
        end
      end

      # DELETE /org_homepages/1
      def destroy
        @org_homepage.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_org_homepage
          @org_homepage = OrgHomepage.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def org_homepage_params
          params.fetch(:org_homepage, {})
        end
    end
  end
end

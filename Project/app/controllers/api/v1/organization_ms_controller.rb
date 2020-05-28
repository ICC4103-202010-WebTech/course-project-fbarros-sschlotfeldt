module Api
  module V1
    class OrganizationMsController < ApplicationController
      before_action :set_organization_m, only: [:show, :update, :destroy]

      # GET /organization_ms
      def index
        @organization_ms = OrganizationM.all

        render json: @organization_ms
      end

      # GET /organization_ms/1
      def show
        render json: @organization_m
      end

      # POST /organization_ms
      def create
        @organization_m = OrganizationM.new(organization_m_params)

        if @organization_m.save
          render json: @organization_m, status: :created, location: @organization_m
        else
          render json: @organization_m.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /organization_ms/1
      def update
        if @organization_m.update(organization_m_params)
          render json: @organization_m
        else
          render json: @organization_m.errors, status: :unprocessable_entity
        end
      end

      # DELETE /organization_ms/1
      def destroy
        @organization_m.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_organization_m
          @organization_m = OrganizationM.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def organization_m_params
          params.fetch(:organization_m, {})
        end
    end
  end
end

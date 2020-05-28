module Api
  module V1
    class EventMsController < ApplicationController
      before_action :set_event_m, only: [:show, :update, :destroy]

      # GET /event_ms
      def index
        @event_ms = EventM.all

        render json: @event_ms
      end

      # GET /event_ms/1
      def show
        render json: @event_m
      end

      # POST /event_ms
      def create
        @event_m = EventM.new(event_m_params)

        if @event_m.save
          render json: @event_m, status: :created, location: @event_m
        else
          render json: @event_m.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /event_ms/1
      def update
        if @event_m.update(event_m_params)
          render json: @event_m
        else
          render json: @event_m.errors, status: :unprocessable_entity
        end
      end

      # DELETE /event_ms/1
      def destroy
        @event_m.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_event_m
          @event_m = EventM.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def event_m_params
          params.fetch(:event_m, {})
        end
    end
  end
end


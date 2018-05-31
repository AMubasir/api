module Api
  module V1
    
    class EventsController < ApplicationController
      
      def index
        events = Event.all
        render json: events
      end

      def show
        event = Event.find(params[:id])
        render json: event
      end

      def create
        event = Event.new(event_params)

        if event.save
          render json: {status: "Success", message: "event Successfully Created", data: event}, status: :ok
        else
          render json: {status: "Error", message: "event Can't Be Saved", data: event.errors}, status: :unprocessable_entity
        end
      end

      def update
        event = Event.find(params[:id])

        if event.update_attributes(event_params)
          render json: {status: "Success", message: "event Successfully Updated", data: event}, status: :ok
        else
          render json: {status: "Error", message: "event Can't Be Saved", data: event.errors}, status: :unprocessable_entity
        end
      end

      def destroy
        event = Event.find(params[:id])
        event.destroy
        render json: {status: "Success", message: "Deleted ", data: event}, status: :ok
      end

      private
      def event_params
        params.require(:event).permit(:date, :name, :description, :group_month_id, :address, :latitude, :longitude)
      end

    end
  end
end
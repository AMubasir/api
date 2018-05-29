module Api
  module V1
    class GroupMonthsController < ApplicationController
    
    def index
      groups = GroupMonth.all
      render json: groups 
    end

    def show
      group = GroupMonth.find(params[:id])
      render json: group
    end

    def create
      group = GroupMonth.new(group_params)

      if group.save
          render json: {status: "Success", message: "group Successfully Created", data: group}, status: :ok
        else
          render json: {status: "Error", message: "group Can't Be Saved", data: group.errors}, status: :unprocessable_entity
        end
    end

    def update
      group = GroupMonth.find(params[:id])

      if group.update_attributes(group_params)
        render json: {status: "Success", message: "group Successfully Created", data: group}, status: :ok
      else
        render json: {status: "Error", message: "group Can't Be Saved", data: group.errors}, status: :unprocessable_entity
      end
    end

    def destroy
      group = GroupMonth.find(params[:id])
      group.destroy
      render json: group
    end

    private
    def group_params
      params.require(:group_month).permit(:name, :user_id)
    end

    end
  end
end
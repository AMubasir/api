module Api
  module V1
    
    class CategoriesController < ApplicationController
      def index
        categories = Category.all
        render json: {status: "Success", message: "Loaded Categories", data: categories}, status: :ok
      end

      def show
        category = Category.find(params[:id])
        render json: {status: "Success", message: "Loaded Categories", data: category}, status: :ok
      end

      def create
        category = Category.new(category_params)

        if category.save
          render json: {status: "Success", message: "Category Successfully Created", data: category}, status: :ok
        else
          render json: {status: "Error", message: "Category Can't Be Saved", data: category.errors}, status: :unprocessable_entity
        end
      end

      def update
        category = Category.find(params[:id])

        if category.update_attributes(category_params)
          render json: {status: "Success", message: "Category Successfully Updated", data: category}, status: :ok
        else
          render json: {status: "Error", message: "Category Can't Be Saved", data: category.errors}, status: :unprocessable_entity
        end
      end

      def destroy
        category = Category.find(params[:id])
        category.destroy
        render json: {status: "Success", message: "Deleted ", data: category}, status: :ok
      end

      private
      def category_params
        params.require(:category).permit(:culinary, :language)
      end

    end
  end
end
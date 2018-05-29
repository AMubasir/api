module Api
  module V1
    
    class CategoryLanguagesController < ApplicationController
      def index
        c_languages = CategoryLanguage.all
        render json: c_languages
      end

      def show
        category = CategoryLanguage.find(params[:id])
        render json: category
      end

      def create
        category = CategoryLanguage.new(category_params)

        if category.save
          render json: {status: "Success", message: "Category Successfully Created", data: category}, status: :ok
        else
          render json: {status: "Error", message: "Category Can't Be Saved", data: category.errors}, status: :unprocessable_entity
        end
      end

      def update
        category = CategoryLanguage.find(params[:id])

        if category.update_attributes(category_params)
          render json: {status: "Success", message: "Category Successfully Updated", data: category}, status: :ok
        else
          render json: {status: "Error", message: "Category Can't Be Saved", data: category.errors}, status: :unprocessable_entity
        end
      end

      def destroy
        category = CategoryLanguage.find(params[:id])
        category.destroy
        render json: {status: "Success", message: "Deleted ", data: category}, status: :ok
      end

      private
      def category_params
        params.require(:category_language).permit(:name)
      end

    end
  end
end
module Api
  module V1
    
    class NativeLanguagesController < ApplicationController
      def index
        natives = NativeLanguage.all
        render json: natives
      end

      def show
        language = NativeLanguage.find(params[:id])
        render json: language
      end

      def create
        language = NativeLanguage.new(language_params)

        if language.save
          render json: {status: "Success", message: "language Successfully Created", data: language}, status: :ok
        else
          render json: {status: "Error", message: "language Can't Be Saved", data: language.errors}, status: :unprocessable_entity
        end
      end

      def update
        language = NativeLanguage.find(params[:id])

        if language.update_attributes(language_params)
          render json: {status: "Success", message: "language Successfully Updated", data: language}, status: :ok
        else
          render json: {status: "Error", message: "language Can't Be Saved", data: language.errors}, status: :unprocessable_entity
        end
      end

      def destroy
        language = NativeLanguage.find(params[:id])
        language.destroy
        render json: {status: "Success", message: "Deleted ", data: language}, status: :ok
      end

      private
      def language_params
        params.require(:native_language).permit(:us, :indonesia, :javanese, :category_language_id)
      end

    end
  end
end
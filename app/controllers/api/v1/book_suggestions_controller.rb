module Api
  module V1
    class BookSuggestionsController < ApplicationController
      def create
        book_suggestion = BookSuggestion.new(suggestion_params)
        return render json: book_suggestion.errors, status: :unprocessable_entity unless book_suggestion.save
        render json: book_suggestion, status: :created
      end

      def suggestion_params
        params.require(:book_suggestion).permit(:editorial, :price, :author, :title, :link, :publisher, :year, :user_id)
      end
    end
  end
end
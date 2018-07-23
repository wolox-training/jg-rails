class BookSuggestionsController < ApplicationController
  def create
    book_suggestion = BookSuggestion.new(suggestion_params)
    return render json: book_suggestion, status: :created if book_suggestion.save
    render json: book_suggestion.errors, status: :unprocessable_entity
  end

  def new; end

  def suggestion_params
    params.require(:book_suggestion).permit(:editorial, :price, :author, :title, :link, :publisher,
                                            :year, :user_id)
  end
end

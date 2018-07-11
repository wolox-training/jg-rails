module Api
  module V1
    class BooksController < ApplicationController
      include Wor::Paginate
      def index
        books = Book.all
        render_paginated books, each_serializer: IndexBookSerializer
      end

      def show
        render json: Book.find(params[:id]), serializer: ShowBookSerializer
      end
    end
  end
end

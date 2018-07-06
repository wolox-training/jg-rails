module Api
  module V1
    class BooksController < ApplicationController
      include Wor::Paginate
      def index
        books = Book.all
        render_paginated books, each_serializer: EachBookSerializer
      end

      def show
        render json: Book.find(params[:id]), serializer: BookSerializer
      end
    end
  end
end

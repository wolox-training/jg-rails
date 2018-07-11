module Api
  module V1
    class BooksController < ApplicationController
      include Wor::Paginate
      rescue_from ActiveRecord::RecordNotFound, with: :error_404

      def error_404
        render json: { message: 'The record was not found' }, status: :not_found
      end

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

module Api
  module V1
    class RentsController < ApiController
      include Wor::Paginate
      def index
        rents = Rent.where(['user_id = :uid', { uid: params[:user_id] }])
        render_paginated rents, each_serializer: RentIndexSerializer
      end

      def create
        if current_user.id != params[:rent][:user_id]
          render json: { message: 'User id not allowed' }, status:	:unprocessable_entity
          return
        end
        rent = Rent.new(rent_params)
        if rent.save
          render json: rent, serializer: RentIndexSerializer, status: :created
        else
          render json: { message: 'Bad request' }, status:	:bad_request
        end
      end

      def rent_params
        params.require(:rent).permit(:user_id, :book_id, :to, :from)
      end
    end
  end
end

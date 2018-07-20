module Api
  module V1
    class RentsController < ApiController
      def index
        user = User.find(params[:user_id])
        authorize user, :show_rents?
        rents = policy_scope(Rent)
        render_paginated rents, each_serializer: RentIndexSerializer
      end

      def create
        return render json: { message: 'User id not allowed' }, status:	:unprocessable_entity unless check_user_id
        rent = Rent.new(rent_params)
        authorize rent
        return render json: rent.errors, status: :unprocessable_entity unless rent.save
        RentMailer.new_rent(rent).deliver_later
        render json: rent, serializer: RentIndexSerializer, status: :created
      end

      private

      def check_user_id
        return false if params[:user_id].to_i != params[:rent][:user_id].to_i
        true
      end

      def rent_params
        params.require(:rent).permit(:user_id, :book_id, :to, :from)
      end
    end
  end
end

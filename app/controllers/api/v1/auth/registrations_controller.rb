module Api
  module V1
    module Auth
      class RegistrationsController < BaseController
        skip_before_action :authenticate_request!, only: [:create]

        def create
          user = User.new(user_params)

          if user.save
            render json: {
              message: "Account created successfully",
              user: UserSerializer.render_as_hash(user),
              token: user.generate_jwt
            }, status: :created
          else
            render json: {
              errors: user.errors.full_messages
            }, status: :unprocessable_entity
          end
        end

        private

        def user_params
          params.require(:user).permit(:name, :email, :password, :password_confirmation)
        end
      end
    end
  end
end
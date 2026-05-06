module Api
  module V1
    module Auth
      class SessionsController < BaseController
        skip_before_action :authenticate_request!, only: [:create]

        def create
          user = User.find_by(email: params[:email]&.downcase)

          if user&.authenticate(params[:password])
            render json: {
              message: "Login successful",
              user: UserSerializer.new(user).serializable_hash,
              token: user.generate_jwt
            }, status: :ok
          else
            render json: { error: "Invalid email or password" }, status: :unauthorized
          end
        end
      end
    end
  end
end
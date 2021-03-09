class RegistrationsController < Devise::RegistrationsController
  skip_before_action :verify_authenticity_token, :only => :create
  respond_to :json

  def create
    build_resource(sign_up_params)

    if resource.save
      render json: {status: 200, message: "User successfully created!"}
    else
      render json: {status: 422, message: resource.errors.full_messages}
    end
  end

  private

  def sign_up_params
    params.fetch(:user).permit([:password, :password_confirmation, :email, :first_name, :last_name])
  end
end
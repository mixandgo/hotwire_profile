class UsersController < ApplicationController
  def show
    redirect_to root_path
  end

  def update
    current_user.update(user_params)

    render "users/profile_complete" if current_user.profile_complete?
  end

  private

    def user_params
      params.require(:user).permit(:name, :bio, :age, :dob, :phone, :country,
:city, :zip, :address)
    end
end

class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  # if user_signed_in?
  # @user = User.find_by!(username: params.fetch(:id))
  # end

end

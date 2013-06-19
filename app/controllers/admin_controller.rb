class AdminController < ApplicationController
  include Devise::Controllers::Helpers

  layout "admin/application"

  before_filter :authenticate_user!

  helper_method :current_user

  def current_user
    @current_user ||= warden.authenticate(scope: :back_user)
  end
end
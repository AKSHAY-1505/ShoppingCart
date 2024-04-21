class AdminController < ApplicationController
    before_action :authenticate_user!

    def home
    end

    private

    def authenticate_user!
        redirect_to root_path, alert: "You do not have access to this page!" unless current_user&.admin?
    end
end
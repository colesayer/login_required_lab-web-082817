class SecretsController < ApplicationController
  before_action :require_login

  def index
    @username = current_user
  end

  def show
    render :show
  end

  private

  def require_login
    redirect_to '/login' unless session.include? :name
  end

end

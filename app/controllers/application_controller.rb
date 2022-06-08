class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token

  before_action :categories

  private

  def categories
    @categories ||= Category.all
  end
end

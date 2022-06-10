class HomeController < ApplicationController
  def index
    @pagy, @projects = pagy(ProjectQuery.new(Project.all, params[:category]).call)
  end
end

class HomeController < ApplicationController
  def index
    @projects = ProjectQuery.new(Project.all, params[:category]).call
  end
end

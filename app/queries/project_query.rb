class ProjectQuery
  attr_reader :projects, :category

  def initialize(movies, category)
    @projects = movies
    @category = category
  end

  def call
    filter_by_category
    @projects
  end

  private

  def filter_by_category
    @projects = projects.where(category: category) if category
  end
end


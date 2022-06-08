class AddStartDayColToProjects < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :start_day, :datetime
  end
end

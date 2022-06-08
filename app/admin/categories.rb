ActiveAdmin.register Category, as: 'ProjectCategories' do
  permit_params :name

  index do
    column :name
    actions
  end
end

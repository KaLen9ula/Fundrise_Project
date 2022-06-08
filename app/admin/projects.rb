ActiveAdmin.register Project do
  permit_params :title, :description, :category_id, :start_date,  photos: [],
                category_ids: [], photos_attributes: [:id, :_destroy, :image]

  index do
    selectable_column
    column :category
    column :title
    column :description
    actions
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :start_day
      f.input :category, as: :select
      f.inputs do
        f.has_many :photos, heading: Photo.class.name,
                   allow_destroy: true,
                   new_record: true do |a|
          a.input :image, as: :file
        end
      end
      f.actions
    end
  end

  show do
    attributes_table do
      row :title
      row :description
      row :category
      row :start_day
    end
  end
end

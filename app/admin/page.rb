ActiveAdmin.register Page do
  permit_params :name, :body, :with_layout

  index do
    selectable_column
    id_column
    column :name
    column :with_layout
    column :created_at
    column :updated_at
    actions
  end

  filter :name
  filter :with_layout
  filter :created_at
  filter :updated_at

  form do |f|
    f.inputs "Page Details" do
      f.input :name
      f.input :body
      f.input :with_layout
    end
    f.actions
  end
end

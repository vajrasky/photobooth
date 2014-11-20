ActiveAdmin.register Person do

  config.sort_order = 'position_asc'
  config.paginate = false

  sortable

  index do
    selectable_column
    column :name
    column :portrait do |person|
      image_tag person.portrait.url(:thumb)
    end
    column :updated_at
    sortable_handle_column
    actions
  end

  form do |f|
    f.inputs "Person", multipart: true do
      f.input :name
      f.input :portrait, :as => :file, :hint => f.template.image_tag(f.object.portrait.url(:thumb))
      f.input :portrait_cache, :as => :hidden
    end
    f.actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :portrait
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end

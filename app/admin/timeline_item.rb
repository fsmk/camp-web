ActiveAdmin.register TimelineItem do
  
  permit_params :title, :html, :at, :image_icon, :camp_version_id

  form do |f|
    f.inputs do
      f.input :title
      f.input :html
      f.input :at
      f.input :image_icon, as: :select, collection: TimelineItem::ICONS
      f.input :camp_version
    end
    f.actions
  end
end

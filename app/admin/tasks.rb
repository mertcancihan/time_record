ActiveAdmin.register Task do

  scope :all
  scope "One Week", :created_at, :default => true do |tasks|
    tasks.where("created_at > ?", 1.weeks.ago)
  end
  scope "One Month", :created_at, :default => true do |tasks|
    tasks.where("created_at > ?", 1.months.ago)
  end

  index do
    selectable_column
    column :id
    column :user
    column :title
    column :description
    column :begin_time
    column :deadline_time
    actions
  end

  filter :user, as: :select, multiple: true
  filter :title,
         as: :select, multiple: true,
         collection: proc { ["Yakın Vade", "Orta Vade", "Uzun Vade"] }
  filter :begin_time
  filter :deadline_time

  show do
    attributes_table do
      row :id
      row :user
      row :title
      row :description
      row :begin_time
      row :deadline_time
    end
  end

  permit_params :user_id, :title, :description, :begin_time, :deadline_time
end
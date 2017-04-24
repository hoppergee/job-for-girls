class AddMoreDetailToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :business_scope, :text
    add_column :users, :financing_process, :string
    add_column :users, :head_icon, :string
    add_column :users, :company_image, :string
    add_column :users, :brief_video, :string
    add_column :users, :brief_video_l, :string
  end
end

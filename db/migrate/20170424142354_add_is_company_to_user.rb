class AddIsCompanyToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :is_company, :boolean, default: false
  end
end

class AddFourCategoryToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :category1, :string
    add_column :jobs, :category2, :string
    add_column :jobs, :category3, :string
    add_column :jobs, :category4, :string
  end
end

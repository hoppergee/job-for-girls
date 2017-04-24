class AddMoreDetailToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :work_ex_lower_bound, :integer
    add_column :jobs, :work_ex_upper_bound, :integer
    add_column :jobs, :work_city, :string
    add_column :jobs, :work_city_region, :string
  end
end

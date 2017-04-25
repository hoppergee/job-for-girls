class ChangeJobColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :category, :text
  end
end

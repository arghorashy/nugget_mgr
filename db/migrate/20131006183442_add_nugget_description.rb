class AddNuggetDescription < ActiveRecord::Migration
  def change
  	# add_column(table_name, column_name, type, options)
  	add_column :nuggets, :description, :text, default: ""
  end
end

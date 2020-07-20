class AddNameToBlogs < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :name, :string
  end
end

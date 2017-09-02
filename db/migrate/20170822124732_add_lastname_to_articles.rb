class AddLastnameToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :Lastname, :string
  end
end

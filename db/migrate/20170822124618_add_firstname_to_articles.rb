class AddFirstnameToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :Firstname, :string
  end
end

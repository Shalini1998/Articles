class RemoveCategoryFromArticles < ActiveRecord::Migration[5.0]
  def change
  	remove_column :articles, :category
  end
end

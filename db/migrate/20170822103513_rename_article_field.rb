class RenameArticleField < ActiveRecord::Migration[5.0]
  def change
  	rename_column :articles, :text, :description
  end
end

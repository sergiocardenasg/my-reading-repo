class AddListColumn < ActiveRecord::Migration
  def change
    add_column :books, :list, :string
  end
end

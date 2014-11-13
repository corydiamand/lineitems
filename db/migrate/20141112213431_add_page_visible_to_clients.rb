class AddPageVisibleToClients < ActiveRecord::Migration
  def change
  	add_column :clients, :page_visible, :boolean
  end
end

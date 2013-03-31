class AddLogoUrlToEvents < ActiveRecord::Migration
  def change
    add_column :events, :logo_url, :string
  end
end

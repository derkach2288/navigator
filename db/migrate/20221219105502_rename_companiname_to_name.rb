class RenameCompaninameToName < ActiveRecord::Migration[7.0]
  def change
    rename_column :companies, :companiname, :name
  end
end

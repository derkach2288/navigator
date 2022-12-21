class RenameCompaniToCompany < ActiveRecord::Migration[7.0]
  def change
    rename_table :companis, :companies
  end
end

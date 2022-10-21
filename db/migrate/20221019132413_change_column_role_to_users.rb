class ChangeColumnRoleToUsers < ActiveRecord::Migration[7.0]
  def change
    change_column_null :users, :role, :integer, false
  end
end

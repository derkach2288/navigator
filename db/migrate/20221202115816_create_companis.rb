class CreateCompanis < ActiveRecord::Migration[7.0]
  def change
    create_table :companis do |t|
      t.string :companiname

      t.timestamps
    end
    add_index :companis, :companiname
  end
end

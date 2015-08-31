class AddProfessionToMember < ActiveRecord::Migration
  def change
    add_column :members, :profession_cd, :integer, default: 0
  end
end

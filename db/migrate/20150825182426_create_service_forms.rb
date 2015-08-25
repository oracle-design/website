class CreateServiceForms < ActiveRecord::Migration
  def change
    create_table :service_forms do |t|
      t.string :email
      t.string :name
      t.integer :project_type_cd
      t.integer :buget_range_cd
      t.text :description

      t.timestamps null: false
    end
  end
end

class CreateSocialServices < ActiveRecord::Migration
  def change
    create_table :social_services do |t|
      t.integer :service_cd
      t.string :link
      t.references :member, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

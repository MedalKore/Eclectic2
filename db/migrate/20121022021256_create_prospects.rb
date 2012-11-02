class CreateProspects < ActiveRecord::Migration
  def change
    create_table :prospects do |t|
      t.string :firstname
      t.string :email

      t.timestamps
    end
  end
end

class CreateHealthcareProfessionals < ActiveRecord::Migration
  def change
    create_table :healthcare_professionals do |t|
      t.string :firstname
      t.string :lastname
      t.string :speciality
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end

class CreateNormanpds < ActiveRecord::Migration[7.0]
  def change
    create_table :normanpds do |t|
      t.string :first_name
      t.string :last_name
      t.string :business
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :email
      t.string :phone1
      t.string :phone2
      t.string :gatecode
      t.string :notes

      t.timestamps
    end
  end
end

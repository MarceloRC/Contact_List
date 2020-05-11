class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name, null: false, default: ''
      t.string :phone_number, null: false, default: ''

      t.timestamps
    end
  end
end

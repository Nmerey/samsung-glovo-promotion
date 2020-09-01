class CreateCheques < ActiveRecord::Migration[6.0]
  def change
    create_table :cheques do |t|
      t.string :fullname
      t.string :city
      t.string :phone
      t.string :email
      t.string :partner
      t.string :device
      t.datetime :buy_date
      t.string :cheque_image

      t.timestamps
    end
  end
end

class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string   :name
      t.string   :email
      t.string   :logo
      t.text     :address
      t.string   :neighboorhood
      t.string   :zipcode
      t.string   :city
      t.string   :state
      t.string   :country
      t.text     :description
      t.string   :phone
      t.string   :website
      t.integer  :cause
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

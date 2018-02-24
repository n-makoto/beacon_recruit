class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :place
      t.string :company_image
      t.text   :detail 
      t.timestamps
    end
  end
end

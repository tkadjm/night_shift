class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.integer :site_id
      t.string :number

      t.timestamps

    end
  end
end

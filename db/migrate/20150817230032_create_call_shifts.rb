class CreateCallShifts < ActiveRecord::Migration
  def change
    create_table :call_shifts do |t|
      t.integer :site_id
      t.integer :professional_id

      t.timestamps

    end
  end
end

class CreateReceivedMessages < ActiveRecord::Migration
  def change
    create_table :received_messages do |t|
      t.boolean :status
      t.integer :message_id
      t.integer :professional_id

      t.timestamps

    end
  end
end

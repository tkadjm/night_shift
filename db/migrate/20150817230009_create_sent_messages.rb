class CreateSentMessages < ActiveRecord::Migration
  def change
    create_table :sent_messages do |t|
      t.integer :message_id
      t.integer :professional_id

      t.timestamps

    end
  end
end

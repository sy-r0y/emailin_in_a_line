class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :to
      t.string :from
      t.text :body
      t.text :editors
      t.datetime :send_at

      t.timestamps
    end
  end
end

class CreateChurches < ActiveRecord::Migration[5.0]
  def change
    create_table :churches do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :phone
      t.string :rsvp
      t.string :friend
      t.string :member

      t.timestamps
    end
  end
end

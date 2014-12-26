class CreateMailerSetups < ActiveRecord::Migration
  def change
    create_table :mailer_setups do |t|
      t.string :email
      t.timestamps
    end
  end
end

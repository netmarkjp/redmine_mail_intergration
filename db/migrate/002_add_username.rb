class AddUsername < ActiveRecord::Migration
  def change
    add_column(:mail_messages, "username", :string, :null => true)
  end
end

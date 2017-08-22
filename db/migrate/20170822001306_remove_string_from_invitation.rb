class RemoveStringFromInvitation < ActiveRecord::Migration[5.0]
  def change
    remove_column :invitations, :string, :string
  end
end

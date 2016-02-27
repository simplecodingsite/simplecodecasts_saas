class AddAvatarToUsers < ActiveRecord::Migration
  def change
    add_column :users, :avatar, :string
  end
end

class AddAttachmentAvatarToProfiles < ActiveRecord::Migration
  def self.up
    change_table :profiles do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :profiles, :avatar
  end
end

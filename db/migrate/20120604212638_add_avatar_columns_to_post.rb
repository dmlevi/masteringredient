class AddAvatarColumnsToPost < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.has_attached_file :avatar
    end
  end

  def self.down
    drop_attached_file :posts, :avatar
  end
end

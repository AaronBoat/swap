class AddAttachmentPosterToCollections < ActiveRecord::Migration
  def self.up
  	change_table :accessories do |t|
  		t.attachment :poster
  end
end

def self.down
	remove_attachment :accessories, :poster
  end
end
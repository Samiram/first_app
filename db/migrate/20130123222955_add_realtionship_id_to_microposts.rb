class AddRealtionshipIdToMicroposts < ActiveRecord::Migration
  def change
  	add_column :microposts, :relationship_id, :integer
  end
end

class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :worker_id

      t.timestamps
    end
  end
end

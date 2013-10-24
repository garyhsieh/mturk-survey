class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string    :worker_id
      t.string    :hit_id
      t.string    :assignment_id
      t.integer   :cond
      t.string    :ip_addr
      t.string    :survey_code  

      t.timestamps
    end
  end
end

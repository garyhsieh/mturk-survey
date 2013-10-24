class CreateResubmits < ActiveRecord::Migration
  def change
    create_table :resubmits do |t|
      t.string    :worker_id
      t.string    :hit_id
      t.string    :assignment_id
      t.timestamps
    end
  end
end

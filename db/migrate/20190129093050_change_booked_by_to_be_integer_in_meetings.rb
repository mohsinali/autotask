class ChangeBookedByToBeIntegerInMeetings < ActiveRecord::Migration[5.2]
  def self.up
    change_column :meetings, :booked_by, 'integer USING CAST(booked_by AS integer)'
  end

  def self.down
    change_column :meetings, :booked_by, 'integer USING CAST(booked_by AS integer)'
  end
end

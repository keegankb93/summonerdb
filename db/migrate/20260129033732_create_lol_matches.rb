class CreateLolMatches < ActiveRecord::Migration[8.1]
  def change
    create_table :lol_matches do |t|
      t.string :external_id, null: false, index: { unique: true }
      t.string :platform_id
      t.string :end_of_game_result
      t.bigint :game_id
      t.string :game_mode
      t.string :game_name
      t.string :game_type
      t.string :game_version
      t.integer :queue_id
      t.integer :map_id
      t.datetime :game_start_timestamp
      t.datetime :game_end_timestamp
      t.bigint :game_duration, comment: "duration in milliseconds"
      t.string :tournament_code

      t.timestamps
    end
  end
end

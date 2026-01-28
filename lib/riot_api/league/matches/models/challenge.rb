# frozen_string_literal: true

module RiotApi
  module League
    module Matches
      module Models
        #
        # Represents challenges/additional stats for a participant in a match
        # @see https://developer.riotgames.com/apis#match-v5/GET_getMatch
        class Challenge < ::RiotApi::Web::Model

          #
          # @!attribute [r] assist_streak_count_12
          # @return [Integer]
          property :assist_streak_count_12, from: "12AssistStreakCount"

          #
          # @!attribute [r] baron_buff_gold_advantage_over_threshold
          # @return [Integer]
          property :baron_buff_gold_advantage_over_threshold

          #
          # @!attribute [r] control_ward_time_coverage_in_river_or_enemy_half
          # @return [Float]
          property :control_ward_time_coverage_in_river_or_enemy_half

          #
          # @!attribute [r] earliest_baron
          # @return [Integer]
          property :earliest_baron

          #
          # @!attribute [r] earliest_dragon_takedown
          # @return [Integer]
          property :earliest_dragon_takedown

          #
          # @!attribute [r] earliest_elder_dragon
          # @return [Integer]
          property :earliest_elder_dragon

          #
          # @!attribute [r] early_laning_phase_gold_exp_advantage
          # @return [Integer]
          property :early_laning_phase_gold_exp_advantage

          #
          # @!attribute [r] faster_support_quest_completion
          # @return [Integer]
          property :faster_support_quest_completion

          #
          # @!attribute [r] fastest_legendary
          # @return [Integer]
          property :fastest_legendary

          #
          # @!attribute [r] had_afk_teammate
          # @return [Integer]
          property :had_afk_teammate

          #
          # @!attribute [r] highest_champion_damage
          # @return [Integer]
          property :highest_champion_damage

          #
          # @!attribute [r] highest_crowd_control_score
          # @return [Integer]
          property :highest_crowd_control_score

          #
          # @!attribute [r] highest_ward_kills
          # @return [Integer]
          property :highest_ward_kills

          #
          # @!attribute [r] jungler_kills_early_jungle
          # @return [Integer]
          property :jungler_kills_early_jungle

          #
          # @!attribute [r] kills_on_laners_early_jungle_as_jungler
          # @return [Integer]
          property :kills_on_laners_early_jungle_as_jungler

          #
          # @!attribute [r] laning_phase_gold_exp_advantage
          # @return [Integer]
          property :laning_phase_gold_exp_advantage

          #
          # @!attribute [r] legendary_count
          # @return [Integer]
          property :legendary_count

          #
          # @!attribute [r] max_cs_advantage_on_lane_opponent
          # @return [Float]
          property :max_cs_advantage_on_lane_opponent

          #
          # @!attribute [r] max_level_lead_lane_opponent
          # @return [Integer]
          property :max_level_lead_lane_opponent

          #
          # @!attribute [r] most_wards_destroyed_one_sweeper
          # @return [Integer]
          property :most_wards_destroyed_one_sweeper

          #
          # @!attribute [r] mythic_item_used
          # @return [Integer]
          property :mythic_item_used

          #
          # @!attribute [r] played_champ_select_position
          # @return [Integer]
          property :played_champ_select_position

          #
          # @!attribute [r] solo_turrets_lategame
          # @return [Integer]
          property :solo_turrets_lategame

          #
          # @!attribute [r] takedowns_first_25_minutes
          # @return [Integer]
          property :takedowns_first_25_minutes, from: "takedownsFirst25Minutes"

          #
          # @!attribute [r] teleport_takedowns
          # @return [Integer]
          property :teleport_takedowns

          #
          # @!attribute [r] third_inhibitor_destroyed_time
          # @return [Integer]
          property :third_inhibitor_destroyed_time

          #
          # @!attribute [r] three_wards_one_sweeper_count
          # @return [Integer]
          property :three_wards_one_sweeper_count

          #
          # @!attribute [r] vision_score_advantage_lane_opponent
          # @return [Float]
          property :vision_score_advantage_lane_opponent

          #
          # @!attribute [r] infernal_scale_pickup
          # @return [Integer]
          property :infernal_scale_pickup

          #
          # @!attribute [r] fist_bump_participation
          # @return [Integer]
          property :fist_bump_participation

          #
          # @!attribute [r] void_monster_kill
          # @return [Integer]
          property :void_monster_kill

          #
          # @!attribute [r] ability_uses
          # @return [Integer]
          property :ability_uses

          #
          # @!attribute [r] aces_before_15_minutes
          # @return [Integer]
          property :aces_before_15_minutes, from: "acesBefore15Minutes"

          #
          # @!attribute [r] allied_jungle_monster_kills
          # @return [Float]
          property :allied_jungle_monster_kills

          #
          # @!attribute [r] baron_takedowns
          # @return [Integer]
          property :baron_takedowns

          #
          # @!attribute [r] blast_cone_opposite_opponent_count
          # @return [Integer]
          property :blast_cone_opposite_opponent_count

          #
          # @!attribute [r] bounty_gold
          # @return [Integer]
          property :bounty_gold

          #
          # @!attribute [r] buffs_stolen
          # @return [Integer]
          property :buffs_stolen

          #
          # @!attribute [r] complete_support_quest_in_time
          # @return [Integer]
          property :complete_support_quest_in_time

          #
          # @!attribute [r] control_wards_placed
          # @return [Integer]
          property :control_wards_placed

          #
          # @!attribute [r] damage_per_minute
          # @return [Float]
          property :damage_per_minute

          #
          # @!attribute [r] damage_taken_on_team_percentage
          # @return [Float]
          property :damage_taken_on_team_percentage

          #
          # @!attribute [r] danced_with_rift_herald
          # @return [Integer]
          property :danced_with_rift_herald

          #
          # @!attribute [r] deaths_by_enemy_champs
          # @return [Integer]
          property :deaths_by_enemy_champs

          #
          # @!attribute [r] dodge_skill_shots_small_window
          # @return [Integer]
          property :dodge_skill_shots_small_window

          #
          # @!attribute [r] double_aces
          # @return [Integer]
          property :double_aces

          #
          # @!attribute [r] dragon_takedowns
          # @return [Integer]
          property :dragon_takedowns

          #
          # @!attribute [r] legendary_item_used
          # @return [Array<Integer>]
          property :legendary_item_used

          #
          # @!attribute [r] effective_heal_and_shielding
          # @return [Float]
          property :effective_heal_and_shielding

          #
          # @!attribute [r] elder_dragon_kills_with_opposing_soul
          # @return [Integer]
          property :elder_dragon_kills_with_opposing_soul

          #
          # @!attribute [r] elder_dragon_multikills
          # @return [Integer]
          property :elder_dragon_multikills

          #
          # @!attribute [r] enemy_champion_immobilizations
          # @return [Integer]
          property :enemy_champion_immobilizations

          #
          # @!attribute [r] enemy_jungle_monster_kills
          # @return [Float]
          property :enemy_jungle_monster_kills

          #
          # @!attribute [r] epic_monster_kills_near_enemy_jungler
          # @return [Integer]
          property :epic_monster_kills_near_enemy_jungler

          #
          # @!attribute [r] epic_monster_kills_within_30_seconds_of_spawn
          # @return [Integer]
          property :epic_monster_kills_within_30_seconds_of_spawn, from: "epicMonsterKillsWithin30SecondsOfSpawn"

          #
          # @!attribute [r] epic_monster_steals
          # @return [Integer]
          property :epic_monster_steals

          #
          # @!attribute [r] epic_monster_stolen_without_smite
          # @return [Integer]
          property :epic_monster_stolen_without_smite

          #
          # @!attribute [r] first_turret_killed
          # @return [Integer]
          property :first_turret_killed

          #
          # @!attribute [r] first_turret_killed_time
          # @return [Float]
          property :first_turret_killed_time

          #
          # @!attribute [r] flawless_aces
          # @return [Integer]
          property :flawless_aces

          #
          # @!attribute [r] full_team_takedown
          # @return [Integer]
          property :full_team_takedown

          #
          # @!attribute [r] game_length
          # @return [Float]
          property :game_length

          #
          # @!attribute [r] get_takedowns_in_all_lanes_early_jungle_as_laner
          # @return [Integer]
          property :get_takedowns_in_all_lanes_early_jungle_as_laner

          #
          # @!attribute [r] gold_per_minute
          # @return [Float]
          property :gold_per_minute

          #
          # @!attribute [r] had_open_nexus
          # @return [Integer]
          property :had_open_nexus

          #
          # @!attribute [r] immobilize_and_kill_with_ally
          # @return [Integer]
          property :immobilize_and_kill_with_ally

          #
          # @!attribute [r] initial_buff_count
          # @return [Integer]
          property :initial_buff_count

          #
          # @!attribute [r] initial_crab_count
          # @return [Integer]
          property :initial_crab_count

          #
          # @!attribute [r] jungle_cs_before_10_minutes
          # @return [Float]
          property :jungle_cs_before_10_minutes, from: "jungleCsBefore10Minutes"

          #
          # @!attribute [r] jungler_takedowns_near_damaged_epic_monster
          # @return [Integer]
          property :jungler_takedowns_near_damaged_epic_monster

          #
          # @!attribute [r] kda
          # @return [Float]
          property :kda

          #
          # @!attribute [r] kill_after_hidden_with_ally
          # @return [Integer]
          property :kill_after_hidden_with_ally

          #
          # @!attribute [r] killed_champ_took_full_team_damage_survived
          # @return [Integer]
          property :killed_champ_took_full_team_damage_survived

          #
          # @!attribute [r] killing_sprees
          # @return [Integer]
          property :killing_sprees

          #
          # @!attribute [r] kill_participation
          # @return [Float]
          property :kill_participation

          #
          # @!attribute [r] kills_near_enemy_turret
          # @return [Integer]
          property :kills_near_enemy_turret

          #
          # @!attribute [r] kills_on_other_lanes_early_jungle_as_laner
          # @return [Integer]
          property :kills_on_other_lanes_early_jungle_as_laner

          #
          # @!attribute [r] kills_on_recently_healed_by_aram_pack
          # @return [Integer]
          property :kills_on_recently_healed_by_aram_pack

          #
          # @!attribute [r] kills_under_own_turret
          # @return [Integer]
          property :kills_under_own_turret

          #
          # @!attribute [r] kills_with_help_from_epic_monster
          # @return [Integer]
          property :kills_with_help_from_epic_monster

          #
          # @!attribute [r] knock_enemy_into_team_and_kill
          # @return [Integer]
          property :knock_enemy_into_team_and_kill

          #
          # @!attribute [r] k_turrets_destroyed_before_plates_fall
          # @return [Integer]
          property :k_turrets_destroyed_before_plates_fall

          #
          # @!attribute [r] land_skill_shots_early_game
          # @return [Integer]
          property :land_skill_shots_early_game

          #
          # @!attribute [r] lane_minions_first_10_minutes
          # @return [Integer]
          property :lane_minions_first_10_minutes, from: "laneMinionsFirst10Minutes"

          #
          # @!attribute [r] lost_an_inhibitor
          # @return [Integer]
          property :lost_an_inhibitor

          #
          # @!attribute [r] max_kill_deficit
          # @return [Integer]
          property :max_kill_deficit

          #
          # @!attribute [r] mejais_full_stack_in_time
          # @return [Integer]
          property :mejais_full_stack_in_time

          #
          # @!attribute [r] more_enemy_jungle_than_opponent
          # @return [Float]
          property :more_enemy_jungle_than_opponent

          #
          # @!attribute [r] multi_kill_one_spell
          # @return [Integer] Checks if a spell with the same instance ID does the final point of damage to at least 2 Champions.
          property :multi_kill_one_spell

          #
          # @!attribute [r] multikills
          # @return [Integer]
          property :multikills

          #
          # @!attribute [r] multikills_after_aggressive_flash
          # @return [Integer]
          property :multikills_after_aggressive_flash

          #
          # @!attribute [r] multi_turret_rift_herald_count
          # @return [Integer]
          property :multi_turret_rift_herald_count

          #
          # @!attribute [r] outer_turret_executes_before_10_minutes
          # @return [Integer]
          property :outer_turret_executes_before_10_minutes, from: "outerTurretExecutesBefore10Minutes"

          #
          # @!attribute [r] outnumbered_kills
          # @return [Integer]
          property :outnumbered_kills

          #
          # @!attribute [r] outnumbered_nexus_kill
          # @return [Integer]
          property :outnumbered_nexus_kill

          #
          # @!attribute [r] perfect_dragon_souls_taken
          # @return [Integer]
          property :perfect_dragon_souls_taken

          #
          # @!attribute [r] perfect_game
          # @return [Integer]
          property :perfect_game

          #
          # @!attribute [r] pick_kill_with_ally
          # @return [Integer]
          property :pick_kill_with_ally

          #
          # @!attribute [r] poro_explosions
          # @return [Integer]
          property :poro_explosions

          #
          # @!attribute [r] quick_cleanse
          # @return [Integer]
          property :quick_cleanse

          #
          # @!attribute [r] quick_first_turret
          # @return [Integer]
          property :quick_first_turret

          #
          # @!attribute [r] quick_solo_kills
          # @return [Integer]
          property :quick_solo_kills

          #
          # @!attribute [r] rift_herald_takedowns
          # @return [Integer]
          property :rift_herald_takedowns

          #
          # @!attribute [r] save_ally_from_death
          # @return [Integer]
          property :save_ally_from_death

          #
          # @!attribute [r] scuttle_crab_kills
          # @return [Integer]
          property :scuttle_crab_kills

          #
          # @!attribute [r] shortest_time_to_ace_from_first_takedown
          # @return [Float]
          property :shortest_time_to_ace_from_first_takedown

          #
          # @!attribute [r] skillshots_dodged
          # @return [Integer]
          property :skillshots_dodged

          #
          # @!attribute [r] skillshots_hit
          # @return [Integer]
          property :skillshots_hit

          #
          # @!attribute [r] snowballs_hit
          # @return [Integer]
          property :snowballs_hit

          #
          # @!attribute [r] solo_baron_kills
          # @return [Integer]
          property :solo_baron_kills

          #
          # @!attribute [r] swarm_defeat_aatrox
          # @return [Integer]
          property :swarm_defeat_aatrox, from: "SWARM_DefeatAatrox"

          #
          # @!attribute [r] swarm_defeat_briar
          # @return [Integer]
          property :swarm_defeat_briar, from: "SWARM_DefeatBriar"

          #
          # @!attribute [r] swarm_defeat_mini_bosses
          # @return [Integer]
          property :swarm_defeat_mini_bosses, from: "SWARM_DefeatMiniBosses"

          #
          # @!attribute [r] swarm_evolve_weapon
          # @return [Integer]
          property :swarm_evolve_weapon, from: "SWARM_EvolveWeapon"

          #
          # @!attribute [r] swarm_have_3_passives
          # @return [Integer]
          property :swarm_have_3_passives, from: "SWARM_Have3Passives"

          #
          # @!attribute [r] swarm_kill_enemy
          # @return [Integer]
          property :swarm_kill_enemy, from: "SWARM_KillEnemy"

          #
          # @!attribute [r] swarm_pickup_gold
          # @return [Float]
          property :swarm_pickup_gold, from: "SWARM_PickupGold"

          #
          # @!attribute [r] swarm_reach_level_50
          # @return [Integer]
          property :swarm_reach_level_50, from: "SWARM_ReachLevel50"

          #
          # @!attribute [r] swarm_survive_15_min
          # @return [Integer]
          property :swarm_survive_15_min, from: "SWARM_Survive15Min"

          #
          # @!attribute [r] swarm_win_with_5_evolved_weapons
          # @return [Integer]
          property :swarm_win_with_5_evolved_weapons, from: "SWARM_WinWith5EvolvedWeapons"

          #
          # @!attribute [r] solo_kills
          # @return [Integer]
          property :solo_kills

          #
          # @!attribute [r] stealth_wards_placed
          # @return [Integer]
          property :stealth_wards_placed

          #
          # @!attribute [r] survived_single_digit_hp_count
          # @return [Integer]
          property :survived_single_digit_hp_count

          #
          # @!attribute [r] survived_three_immobilizes_in_fight
          # @return [Integer]
          property :survived_three_immobilizes_in_fight

          #
          # @!attribute [r] takedown_on_first_turret
          # @return [Integer]
          property :takedown_on_first_turret

          #
          # @!attribute [r] takedowns
          # @return [Integer]
          property :takedowns

          #
          # @!attribute [r] takedowns_after_gaining_level_advantage
          # @return [Integer]
          property :takedowns_after_gaining_level_advantage

          #
          # @!attribute [r] takedowns_before_jungle_minion_spawn
          # @return [Integer]
          property :takedowns_before_jungle_minion_spawn

          #
          # @!attribute [r] takedowns_first_x_minutes
          # @return [Integer]
          property :takedowns_first_x_minutes

          #
          # @!attribute [r] takedowns_in_alcove
          # @return [Integer]
          property :takedowns_in_alcove

          #
          # @!attribute [r] takedowns_in_enemy_fountain
          # @return [Integer]
          property :takedowns_in_enemy_fountain

          #
          # @!attribute [r] team_baron_kills
          # @return [Integer]
          property :team_baron_kills

          #
          # @!attribute [r] team_damage_percentage
          # @return [Float]
          property :team_damage_percentage

          #
          # @!attribute [r] team_elder_dragon_kills
          # @return [Integer]
          property :team_elder_dragon_kills

          #
          # @!attribute [r] team_rift_herald_kills
          # @return [Integer]
          property :team_rift_herald_kills

          #
          # @!attribute [r] took_large_damage_survived
          # @return [Integer]
          property :took_large_damage_survived

          #
          # @!attribute [r] turret_plates_taken
          # @return [Integer]
          property :turret_plates_taken

          #
          # @!attribute [r] turrets_taken_with_rift_herald
          # @return [Integer] Credit given to any player who damages a tower destroyed within 30 seconds of a Rift Herald charge.
          property :turrets_taken_with_rift_herald

          #
          # @!attribute [r] turret_takedowns
          # @return [Integer]
          property :turret_takedowns

          #
          # @!attribute [r] twenty_minions_in_3_seconds_count
          # @return [Integer]
          property :twenty_minions_in_3_seconds_count, from: "twentyMinionsIn3SecondsCount"

          #
          # @!attribute [r] two_wards_one_sweeper_count
          # @return [Integer]
          property :two_wards_one_sweeper_count

          #
          # @!attribute [r] unseen_recalls
          # @return [Integer]
          property :unseen_recalls

          #
          # @!attribute [r] vision_score_per_minute
          # @return [Float]
          property :vision_score_per_minute

          #
          # @!attribute [r] wards_guarded
          # @return [Integer]
          property :wards_guarded

          #
          # @!attribute [r] ward_takedowns
          # @return [Integer]
          property :ward_takedowns

          #
          # @!attribute [r] ward_takedowns_before_20_m
          # @return [Integer]
          property :ward_takedowns_before_20_m, from: "wardTakedownsBefore20M"

        end
      end
    end
  end
end

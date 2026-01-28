# frozen_string_literal: true

module RiotApi
  module League
    module Matches
      module Models
        #
        # Represents participant data of a match.
        # @see https://developer.riotgames.com/apis#match-v5/GET_getMatch
        class Participant < ::RiotApi::Web::Model

          #
          # @!attribute [r] all_in_pings
          # @return [Integer]
          property :all_in_pings

          #
          # @!attribute [r] assist_me_pings
          # @return [Integer]
          property :assist_me_pings

          #
          # @!attribute [r] assists
          # @return [Integer]
          property :assists

          #
          # @!attribute [r] baron_kills
          # @return [Integer]
          property :baron_kills

          #
          # @!attribute [r] bounty_level
          # @return [Integer]
          property :bounty_level

          #
          # @!attribute [r] champ_experience
          property :champ_experience

          #
          # @!attribute [r] champ_level
          # @return [Integer]
          property :champ_level

          #
          # @!attribute [r] champion_id
          # @return [Integer]
          property :champion_id

          #
          # @!attribute [r] champion_name
          # @return [String]
          property :champion_name

          #
          # @!attribute [r] command_pings
          # @return [Integer]
          property :command_pings

          #
          # @!attribute [r] champion_transform
          # @return [Integer]
          property :champion_transform

          #
          # @!attribute [r] consumables_purchased
          # @return [Integer]
          property :consumables_purchased

          #
          # @!attribute [r] challenges
          # @return [RiotApi::League::Matches::Models::Challenge]
          property :challenges, "RiotApi::League::Matches::Models::Challenge"

          #
          # @!attribute [r] inhibitor_kills
          # @return [Integer]
          property :inhibitor_kills

          #
          # @!attribute [r] inhibitor_takedowns
          # @return [Integer]
          property :inhibitor_takedowns

          #
          # @!attribute [r] inhibitors_lost
          # @return [Integer]
          property :inhibitors_lost

          #
          # @!attribute [r] item0
          # @return [Integer]
          property :item0

          #
          # @!attribute [r] item1
          # @return [Integer]
          property :item1

          #
          # @!attribute [r] item2
          # @return [Integer]
          property :item2

          #
          # @!attribute [r] item3
          # @return [Integer]
          property :item3

          #
          # @!attribute [r] item4
          # @return [Integer]
          property :item4

          #
          # @!attribute [r] item5
          # @return [Integer]
          property :item5

          #
          # @!attribute [r] item6
          # @return [Integer]
          property :item6

          #
          # @!attribute [r] items_purchased
          # @return [Integer]
          property :items_purchased

          #
          # @!attribute [r] killing_sprees
          # @return [Integer]
          property :killing_sprees

          #
          # @!attribute [r] kills
          # @return [Integer]
          property :kills

          #
          # @!attribute [r] lane
          # @return [String]
          property :lane

          #
          # @!attribute [r] largest_critical_strike
          # @return [Integer]
          property :largest_critical_strike

          #
          # @!attribute [r] largest_killing_spree
          # @return [Integer]
          property :largest_killing_spree

          #
          # @!attribute [r] largest_multi_kill
          # @return [Integer]
          property :largest_multi_kill

          #
          # @!attribute [r] longest_time_spent_living
          # @return [Integer]
          property :longest_time_spent_living

          #
          # @!attribute [r] magic_damage_dealt
          # @return [Integer]
          property :magic_damage_dealt

          #
          # @!attribute [r] magic_damage_dealt_to_champions
          # @return [Integer]
          property :magic_damage_dealt_to_champions

          #
          # @!attribute [r] magic_damage_taken
          # @return [Integer]
          property :magic_damage_taken

          #
          # @!attribute [r] missions
          # @return [RiotApi::League::Matches::Models::Mission]
          property :missions, "RiotApi::League::Matches::Models::Mission"

          #
          # @!attribute [r] neutral_minions_killed
          # @return [Integer] Incremented on kills of kPet and kJungleMonster.
          property :neutral_minions_killed

          #
          # @!attribute [r] need_vision_pings
          # @return [Integer] Green ward ping count.
          property :need_vision_pings

          #
          # @!attribute [r] nexus_kills
          # @return [Integer]
          property :nexus_kills

          #
          # @!attribute [r] nexus_takedowns
          # @return [Integer]
          property :nexus_takedowns

          #
          # @!attribute [r] nexus_lost
          # @return [Integer]
          property :nexus_lost

          #
          # @!attribute [r] objectives_stolen
          # @return [Integer]
          property :objectives_stolen

          #
          # @!attribute [r] objectives_stolen_assists
          # @return [Integer]
          property :objectives_stolen_assists

          #
          # @!attribute [r] on_my_way_pings
          # @return [Integer] Blue arrow pointing at ground ping count.
          property :on_my_way_pings

          #
          # @!attribute [r] participant_id
          # @return [Integer]
          property :participant_id

          #
          # @!attribute [r] player_score0
          # @return [Integer]
          property :player_score0

          #
          # @!attribute [r] player_score1
          # @return [Integer]
          property :player_score1

          #
          # @!attribute [r] player_score2
          # @return [Integer]
          property :player_score2

          #
          # @!attribute [r] player_score3
          # @return [Integer]
          property :player_score3

          #
          # @!attribute [r] player_score4
          # @return [Integer]
          property :player_score4

          #
          # @!attribute [r] player_score5
          # @return [Integer]
          property :player_score5

          #
          # @!attribute [r] player_score6
          # @return [Integer]
          property :player_score6

          #
          # @!attribute [r] player_score7
          # @return [Integer]
          property :player_score7

          #
          # @!attribute [r] player_score8
          # @return [Integer]
          property :player_score8

          #
          # @!attribute [r] player_score9
          # @return [Integer]
          property :player_score9

          #
          # @!attribute [r] player_score10
          # @return [Integer]
          property :player_score10

          #
          # @!attribute [r] player_score11
          # @return [Integer]
          property :player_score11

          #
          # @!attribute [r] penta_kills
          # @return [Integer]
          property :penta_kills

          #
          # @!attribute [r] perks
          # @return [RiotApi::League::Matches::Models::Perk]
          property :perks, "RiotApi::League::Matches::Models::Perk"

          #
          # @!attribute [r] physical_damage_dealt
          # @return [Integer]
          property :physical_damage_dealt

          #
          # @!attribute [r] physical_damage_dealt_to_champions
          # @return [Integer]
          property :physical_damage_dealt_to_champions

          #
          # @!attribute [r] physical_damage_taken
          # @return [Integer]
          property :physical_damage_taken

          #
          # @!attribute [r] placement
          # @return [Integer]
          property :placement

          #
          # @!attribute [r] player_augment1
          # @return [Integer]
          property :player_augment1

          #
          # @!attribute [r] player_augment2
          # @return [Integer]
          property :player_augment2

          #
          # @!attribute [r] player_augment3
          # @return [Integer]
          property :player_augment3

          #
          # @!attribute [r] player_augment4
          # @return [Integer]
          property :player_augment4

          #
          # @!attribute [r] player_subteam_id
          # @return [Integer]
          property :player_subteam_id

          #
          # @!attribute [r] push_pings
          # @return [Integer] Green minion ping count.
          property :push_pings

          #
          # @!attribute [r] profile_icon
          # @return [Integer]
          property :profile_icon

          #
          # @!attribute [r] puuid
          # @return [String]
          property :puuid

          #
          # @!attribute [r] quadra_kills
          # @return [Integer]
          property :quadra_kills

          #
          # @!attribute [r] riot_id_game_name
          # @return [String]
          property :riot_id_game_name

          #
          # @!attribute [r] riot_id_tagline
          # @return [String]
          property :riot_id_tagline

          #
          # @!attribute [r] role
          # @return [String]
          property :role

          #
          # @!attribute [r] sight_wards_bought_in_game
          # @return [Integer]
          property :sight_wards_bought_in_game

          #
          # @!attribute [r] spell1_casts
          # @return [Integer]
          property :spell1_casts

          #
          # @!attribute [r] spell2_casts
          # @return [Integer]
          property :spell2_casts

          #
          # @!attribute [r] spell3_casts
          # @return [Integer]
          property :spell3_casts

          #
          # @!attribute [r] spell4_casts
          # @return [Integer]
          property :spell4_casts

          #
          # @!attribute [r] subteam_placement
          # @return [Integer]
          property :subteam_placement

          #
          # @!attribute [r] summoner1_casts
          # @return [Integer]
          property :summoner1_casts

          #
          # @!attribute [r] summoner1_id
          # @return [Integer]
          property :summoner1_id

          #
          # @!attribute [r] summoner2_casts
          # @return [Integer]
          property :summoner2_casts

          #
          # @!attribute [r] summoner2_id
          # @return [Integer]
          property :summoner2_id

          #
          # @!attribute [r] summoner_id
          # @return [String]
          property :summoner_id

          #
          # @!attribute [r] summoner_level
          # @return [Integer]
          property :summoner_level

          #
          # @!attribute [r] summoner_name
          # @return [String]
          property :summoner_name

          #
          # @!attribute [r] team_early_surrendered
          # @return [Boolean]
          property :team_early_surrendered

          #
          # @!attribute [r] team_id
          # @return [Integer]
          property :team_id

          #
          # @!attribute [r] team_position
          # @return [String] Best guess for position played with team constraint (one top, one jungle, etc). Recommended over individual_position.
          property :team_position

          #
          # @!attribute [r] time_ccing_others
          # @return [Integer]
          property :time_ccing_others, from: "timeCCingOthers"

          #
          # @!attribute [r] time_played
          # @return [Integer]
          property :time_played

          #
          # @!attribute [r] total_ally_jungle_minions_killed
          # @return [Integer]
          property :total_ally_jungle_minions_killed

          #
          # @!attribute [r] total_damage_dealt
          # @return [Integer]
          property :total_damage_dealt

          #
          # @!attribute [r] total_damage_dealt_to_champions
          # @return [Integer]
          property :total_damage_dealt_to_champions

          #
          # @!attribute [r] total_damage_shielded_on_teammates
          # @return [Integer]
          property :total_damage_shielded_on_teammates

          #
          # @!attribute [r] total_damage_taken
          # @return [Integer]
          property :total_damage_taken

          #
          # @!attribute [r] total_enemy_jungle_minions_killed
          # @return [Integer]
          property :total_enemy_jungle_minions_killed

          #
          # @!attribute [r] total_heal
          # @return [Integer] All heals applied (not regeneration), including healing enemies, jungle monsters, yourself, etc.
          property :total_heal

          #
          # @!attribute [r] total_heals_on_teammates
          # @return [Integer] Post-modified heal amount on teammates. Healing someone missing 5 health for 100 gives +5.
          property :total_heals_on_teammates

          #
          # @!attribute [r] total_minions_killed
          # @return [Integer] Incremented on kills of kTeamMinion, kMeleeLaneMinion, kSuperLaneMinion, kRangedLaneMinion and kSiegeLaneMinion.
          property :total_minions_killed

          #
          # @!attribute [r] total_time_cc_dealt
          # @return [Integer]
          property :total_time_cc_dealt, from: "totalTimeCCDealt"

          #
          # @!attribute [r] total_time_spent_dead
          # @return [Integer]
          property :total_time_spent_dead

          #
          # @!attribute [r] total_units_healed
          # @return [Integer]
          property :total_units_healed

          #
          # @!attribute [r] triple_kills
          # @return [Integer]
          property :triple_kills

          #
          # @!attribute [r] true_damage_dealt
          # @return [Integer]
          property :true_damage_dealt

          #
          # @!attribute [r] true_damage_dealt_to_champions
          # @return [Integer]
          property :true_damage_dealt_to_champions

          #
          # @!attribute [r] true_damage_taken
          # @return [Integer]
          property :true_damage_taken

          #
          # @!attribute [r] turret_kills
          # @return [Integer]
          property :turret_kills

          #
          # @!attribute [r] turret_takedowns
          # @return [Integer]
          property :turret_takedowns

          #
          # @!attribute [r] turrets_lost
          # @return [Integer]
          property :turrets_lost

          #
          # @!attribute [r] unreal_kills
          # @return [Integer]
          property :unreal_kills

          #
          # @!attribute [r] vision_score
          # @return [Integer]
          property :vision_score

          #
          # @!attribute [r] vision_cleared_pings
          # @return [Integer]
          property :vision_cleared_pings

          #
          # @!attribute [r] vision_wards_bought_in_game
          # @return [Integer]
          property :vision_wards_bought_in_game

          #
          # @!attribute [r] wards_killed
          # @return [Integer]
          property :wards_killed

          #
          # @!attribute [r] wards_placed
          # @return [Integer]
          property :wards_placed

          #
          # @!attribute [r] win
          # @return [Boolean]
          property :win
        end
      end
    end
  end
end

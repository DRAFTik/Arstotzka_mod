-- BASE
NDefines.NGame.START_DATE = "1983.1.1.12"
NDefines.NGame.END_DATE = "2083.1.1.12"


-- Spot Optimizations
--NDefines.NGame.LAG_DAYS_FOR_LOWER_SPEED = 100								-- Days of client lag for decrease of gamespeed
--NDefines.NGame.LAG_DAYS_FOR_PAUSE = 60									-- Days of client lag for pause of gamespeed.
NDefines.NGame.EVENT_TIMEOUT_DEFAULT = 7									-- Default days before an event times out if not scripted
NDefines.NGame.MISSION_REMOVE_FROM_INTERFACE_DEFAULT = 3					-- Default days before a mission is removed from the interface after having failed or completed

-- Politics
--NDefines.NPolitics.BASE_POLITICAL_POWER_INCREASE = 2.0						-- Weekly ?? (DAYLY!!) increase of PP.

-- Focuses
NDefines.NFocus.MAX_SAVED_FOCUS_PROGRESS = 5								-- This much progress can be saved while not having a focus selected

-- Country
NDefines.NCountry.EVENT_PROCESS_OFFSET = 30									-- Events are checked every X day per country or state (1 is ideal, but CPU heavy)
NDefines.NCountry.SPECIAL_FORCES_CAP_BASE = 0.05							-- Max ammount of special forces battalions is total number of non-special forces battalions multiplied by this and modified by a country modifier
NDefines.NCountry.SPECIAL_FORCES_CAP_MIN = 36								-- You can have a minimum of this many special forces battalions, regardless of the number of non-special forces battalions you have, this can also be modified by a country modifier
NDefines.NCountry.MIN_FOCUSES_FOR_CONTINUOUS = 0							-- Focuses needed to unlock continuous focuses
NDefines.NCountry.MAJOR_MIN_FACTORIES = 75									-- need at least these many factories to become a major
NDefines.NCountry.MIN_MAJOR_COUNTRIES = 0									-- MIN_MAJOR_COUNTRIES countries with most factories will be considered as major countries
NDefines.NMilitary.MIN_DIVISION_DEPLOYMENT_TRAINING = 0.3					-- Min level of division training
NDefines.NMilitary.SLOWEST_SPEED = 1

-- Diplomatic
NDefines.NDiplomacy.MAX_OPINION_VALUE = 200									-- Max opinion value cap.
NDefines.NDiplomacy.MIN_OPINION_VALUE = -200								-- Min opinion value cap.
NDefines.NDiplomacy.VERY_GOOD_OPINION = 100									-- Threshold for a country that has a very good opinion of you.
NDefines.NDiplomacy.VERY_BAD_OPINION = -100									-- Threshold for a country that has a very bad opinion of you.
NDefines.NDiplomacy.IDEOLOGY_JOIN_FACTION_MIN_LEVEL = 0.4					-- ideology limit required to join faction
NDefines.NDiplomacy.DIPLOMACY_HOURS_BETWEEN_REQUESTS = 0					-- How long a country must wait before sending a new diplomatic request.
NDefines.NDiplomacy.MIN_TRUST_VALUE = -500									-- max value for embargo, vanilla -100
NDefines.NDiplomacy.BASE_SEND_ATTACHE_COST = 50								-- Political power cost to send attache
NDefines.NDiplomacy.BASE_SEND_ATTACHE_CP_COST = 25							-- Command Power sent attache usage cost

NDefines.NDiplomacy.TENSION_NO_CB_WAR = 10									-- Amount of tension generated by a no-CB wargoal
NDefines.NDiplomacy.TENSION_CB_WAR = 2.5									-- Amount of tension generated by a war with a CB
NDefines.NDiplomacy.TENSION_ANNEX_NO_CLAIM = 1.5							-- Amount of tension generated by annexing a state you don't have claims on
--NDefines.NDiplomacy.TENSION_DECAY = 0.5									-- Each months tension decays this much
--NDefines.NDiplomacy.TENSION_DECAY_DAILY = 0.01							-- Each day tension decays this much for Threat sources which are no longer relevant. Replaces TENSION_DECAY as of 1.12.0
NDefines.NDiplomacy.EMBARGO_COST = 10										-- Vanilla is 100	-- One-time cost
NDefines.NDiplomacy.EMBARGO_THREAT_THRESHOLD = 10							-- Vanilla is 30	-- Target-generated threat threshold to allow embargo (affected by modifiers)


-- Technology
NDefines.NTechnology.MAX_SUBTECHS = 4										-- Max number of sub technologies a technology can have.

-- Buildings
NDefines.NBuildings.MAX_SHARED_SLOTS = 36									-- Max slots shared by factories
--для гибридов
NDefines.NAI.BUILDING_TARGETS_BUILDING_PRIORITIES = {						 -- buildings in order of pirority when considering building targets strategies. First has the greatest priority, omitted has the lowest. NOTE: not all buildings are supported by building targets strategies.
	'synthetic_refinery',
	'fuel_silo',
	'industrial_complex',
	'dockyard',
	'arms_factory',
}

-- Operatives
NDefines.NOperatives.MAX_RECRUITED_OPERATIVES = 500


--------------
-- AI FIX
--------------

--попытка починить раш альянсов
NDefines.NAI.POTENTIAL_ALLY_JOIN_WAR_FACTOR = 25							-- How much increase in threat does AI feel against neighbours who are allied against one of our enemies

NDefines.NAI.GARRISON_FRACTION = 0.2										-- How large part of a front should always be holding the line rather than advancing at the enemy
NDefines.NAI.DIPLOMACY_REJECTED_WAIT_MONTHS_BASE = 1						-- AI will not repeat offers until at least this time has passed, and at most the double
NDefines.NAI.MIN_INVASION_PLAN_VALUE_TO_EXECUTE	 = 0.1						-- AI will typically avoid carrying out a plan it below this value (0.0 is considered balanced).
NDefines.NAI.ENTRENCHMENT_WEIGHT = 4.0										-- AI should favour units with less entrenchment when assigning units around.
NDefines.NAI.UNIT_ASSIGNMENT_TERRAIN_IMPORTANCE = 20.0						-- diminshed by 4x because of Greece-- Terrain score for units are multiplied by this when the AI is deciding which front they should be assigned to
NDefines.NAI.RESEARCH_AHEAD_OF_TIME_FACTOR = 15.0							-- To which extent AI should care about ahead of time penalties to research	#4.0
--NDefines.NAI.VARIANT_UPGRADE_MIN_XP = 100									-- Minimum XP before attempting to create a new variant. #50
NDefines.NAI.RESEARCH_BONUS_FACTOR = 1.5									-- To which extent AI should care about bonuses to research
NDefines.NAI.MAX_AHEAD_RESEARCH_PENALTY = 10								-- max ahead of tiem penalty ai will pick ever
NDefines.NAI.DYNAMIC_STRATEGIES_THREAT_FACTOR = 6.0							-- How much threat generated by other countries effects generated strategies
-- NDefines.NAI.ATTACK_HEAVILY_DEFENDED_LIMIT = 1.1							-- AI will not launch attacks against heavily defended fronts unless they consider to have this level of advantage (1.0 = 100%)

NDefines.NAI.UPGRADE_DIVISION_RELUCTANCE = 7								-- How often to consider upgrading to new templates for units in the field
NDefines.NAI.UPGRADE_PERCENTAGE_OF_FORCES = 0.01							-- How big part of the army that should be considered for upgrading
NDefines.NAI.UPGRADES_DEFICIT_LIMIT_DAYS = 180		--365				-- Ai will avoid upgrading units in the field to new templates if it takes longer than this to fullfill their equipment need

NDefines.NAI.FASCISTS_ALLY_COMMUNISTS = -150
NDefines.NAI.COMMUNISTS_ALLY_FASCISTS = -150

NDefines.NAI.PLAN_ACTIVATION_SUPERIORITY_AGGRO = 10		--default 1.0		-- How aggressive a country is in activating a plan based on how superiour their force is.
NDefines.NAI.PLAN_VALUE_TO_EXECUTE = 0.0		-- -0.5						-- AI will typically avoid carrying out a plan it below this value (0.0 is considered balanced).

NDefines.NAI.MIN_PLAN_VALUE_TO_MICRO_INACTIVE = 0.1							-- The AI will not consider members of groups which plan is not activated AND evaluates lower than this.

NDefines.NAI.MAX_UNITS_FACTOR_AREA_ORDER = 1.5 		--default 0.75			-- Factor for max number of units to assign to area defense orders
NDefines.NAI.DESIRED_UNITS_FACTOR_AREA_ORDER = 0.75	--default 0.7			-- Factor for desired number of units to assign to area defense orders
NDefines.NAI.MIN_UNITS_FACTOR_AREA_ORDER = 0.5		--default 1.0			-- Factor for min number of units to assign to area defense orders

NDefines.NAI.MAX_UNITS_FACTOR_FRONT_ORDER = 3.0								-- Factor for max number of units to assign to area front orders
NDefines.NAI.DESIRED_UNITS_FACTOR_FRONT_ORDER = 3.0							-- Factor for desired number of units to assign to area front orders
NDefines.NAI.MIN_UNITS_FACTOR_FRONT_ORDER = 2.0								-- Factor for min number of units to assign to area front orders

NDefines.NAI.MAX_UNITS_FACTOR_INVASION_ORDER = 1.5	--0.8					-- Factor for max number of units to assign to naval invasion orders
NDefines.NAI.DESIRED_UNITS_FACTOR_INVASION_ORDER = 1.0	--0.8				-- Factor for desired number of units to assign to naval invasion orders
NDefines.NAI.MIN_UNITS_FACTOR_INVASION_ORDER = 1.0	--0.8					-- Factor for min number of units to assign to naval invasion orders

NDefines.NAI.FRONT_UNITS_CAP_FACTOR = 10.0	----15.0 mad test here too 		--default 15.0				-- A factor applied to total front size and supply use. Primarily effects small fronts
NDefines.NAI.MAX_DIST_PORT_RUSH = 40.0										-- If a unit is in enemy territory with no supply it will consider nearby ports within this distance.

NDefines.NAI.MIN_FIELD_STRENGTH_TO_BUILD_UNITS = 0.7	--0.6				-- Cancel unit production if below this to get resources out to units in the field
NDefines.NAI.MIN_MANPOWER_TO_BUILD_UNITS = 0.7			--0.6				-- Cancel unit production if below this to get resources out to units in the field

NDefines.NMilitary.PLAN_SPREAD_ATTACK_WEIGHT = 300	-- 12.0					-- The higher the value, the less it should crowd provinces with multiple attacks.		#WICHTIG
NDefines.NMilitary.PLAN_MIN_AUTOMATED_EMPTY_POCKET_SIZE = 20	-- 2 		-- The battle plan system will only automatically attack provinces in pockets that has no resistance and are no bigger than these many provinces

NDefines.NAI.VP_LEVEL_IMPORTANCE_HIGH = 50									-- Victory points with values higher than or equal to this are considered to be of high importance.
NDefines.NAI.VP_LEVEL_IMPORTANCE_MEDIUM = 25								-- Victory points with values higher than or equal to this are considered to be of medium importance.
NDefines.NAI.VP_LEVEL_IMPORTANCE_LOW = 5									-- Victory points with values higher than or equal to this are considered to be of low importance.

NDefines.NAI.FORTIFIED_RATIO_TO_CONSIDER_A_FRONT_FORTIFIED = 0.3			-- ai will consider a front fortified if this ratio of provinces has fort
NDefines.NAI.HEAVILY_FORTIFIED_RATIO_TO_CONSIDER_A_FRONT_FORTIFIED = 0.3	-- ai will consider a front super fortified if this ratio of provinces has lots of forts
NDefines.NAI.INVASION_DISTANCE_RANDOMNESS = 400								-- This higher the value, the more unpredictable the invasions. Compares to actual map distance in pixels.

NDefines.NMilitary.FRONTLINE_EXPANSION_FACTOR = 0.0 -- #MOD was 0.0 remove if problematic -- was 0.6,				-- When attacking along a frontline, how much should units spread out as they advance. 0.0 means head (more or less) directly to the drawn frontline, with no distractions

NDefines.NAI.MAIN_ENEMY_FRONT_IMPORTANCE = 20.0								-- How much extra focus the AI should put on who it considers to be its current main enemy.
NDefines.NAI.EASY_TARGET_FRONT_IMPORTANCE = 10.0							-- How much extra focus the AI should put on who it considers to be the easiest target.

--NDefines.NAI.UPGRADE_XP_RUSH_UPDATE = 5									-- If XP is above this on the daily tick the AI will attempt to spend it

--NDefines.NMilitary.PLAN_EXECUTE_CAREFUL_MAX_FORT = 4						-- If execution mode is set to careful, units will not attack provinces with fort levels greater than or equal to this

NDefines.NAI.DIPLOMACY_ACCEPT_VOLUNTEERS_BASE = 100							-- Base value of volunteer acceptance (help is welcome)
NDefines.NDiplomacy.VOLUNTEERS_DIVISIONS_REQUIRED = 10						-- This many divisons are required for the country to be able to send volunteers.

-- УДАЛЕНО --NDefines.NAI.DIVISION_DESIGN_COMBAT_WIDTH_TARGET_WEIGHT = -10000			-- This score is reduced the farther the width is from the target width (if set)

-- NDefines.NAI.DEPLOYED_UNIT_MANPOWER_RATIO_TO_BUFFER_WARTIME = 0.2 			-- deployment will try to buffer a ratio of deployed manpower (for reinforcements) during war time
-- NDefines.NAI.MAX_AVAILABLE_MANPOWER_RATIO_TO_BUFFER_WARTIME = 0.2			-- deployment will try to buffer a ratio of manpower (for reinforcements) during war time

--NDefines.NAI.MANPOWER_FREE_USAGE_THRESHOLD = 100000 			            -- If AI has this much manpower he doesn't care about the percentage
-- УДАЛЕНО --NDefines.NAI.MANPOWER_RESERVED_THRESHOLD = 0 								-- The AI will not deploy more units if he goes below this percentag


NDefines.NAI.DIPLOMACY_IMPROVE_RELATION_COST_FACTOR = 7.0					-- Desire to boost relations subtracts the cost multiplied by this
NDefines.NAI.COMMAND_POWER_BEFORE_SPEND_ON_TRAITS = 65.0

-- DIVISION PRODUCTION
NDefines.NAI.DEPLOY_MIN_TRAINING_SURRENDER_FACTOR = 0.5						-- Required percentage of training (1.0 = 100%) for AI to deploy unit in wartime while surrender progress is higher than 0 
NDefines.NAI.DEPLOY_MIN_EQUIPMENT_SURRENDER_FACTOR = 0.8					-- Required percentage of equipment (1.0 = 100%) for AI to deploy unit in wartime while surrender progress is higher than 0 
NDefines.NAI.DEPLOY_MIN_TRAINING_PEACE_FACTOR = 0.4							-- Required percentage of training (1.0 = 100%) for AI to deploy unit in peacetime
NDefines.NAI.DEPLOY_MIN_EQUIPMENT_PEACE_FACTOR = 0.9						-- Required percentage of equipment (1.0 = 100%) for AI to deploy unit in peacetime
NDefines.NAI.DEPLOY_MIN_TRAINING_WAR_FACTOR = 0.9		--0.05				-- Required percentage of training (1.0 = 100%) for AI to deploy unit in wartime
NDefines.NAI.DEPLOY_MIN_EQUIPMENT_WAR_FACTOR = 0.9		--0.8				-- Required percentage of equipment (1.0 = 100%) for AI to deploy unit in wartime
NDefines.NAI.DEPLOY_MIN_EQUIPMENT_CAP_DEPLOY_FACTOR = 0.85					-- If training is capped by equipment deficit and we have reached that cap, deploy unit anyway if percentage is above this (reinforce in field instead).

-- EQUIPMENT PRODUCTION
NDefines.NAI.PRODUCTION_EQUIPMENT_SURPLUS_FACTOR = 1	-- 0.4				-- Base value for how much of currently used equipment the AI will at least strive to have in stock
NDefines.NAI.SHIPS_PRODUCTION_BASE_COST = 1
NDefines.NAI.NEEDED_NAVAL_FACTORIES_EXPENSIVE_SHIP_BONUS = 1000
NDefines.NAI.PRODUCTION_MAX_PROGRESS_TO_SWITCH_NAVAL = 0.001 -- temp fix	-- AI will not replace ships being built by newer types if progress is above this
NDefines.NAI.PRODUCTION_WAIT_TO_FINISH_IF_EXPENSIVE = 0.01
NDefines.NAI.PRODUCTION_WAIT_TO_FINISH_IF_CHEAP = 0.01

NDefines.NAI.NAVAL_DOCKYARDS_SHIP_FACTOR = 1000								-- The extent to which number of dockyards play into amount of sips a nation wants
-- УДАЛЕНО --NDefines.NAI.NAVAL_BASES_SHIP_FACTOR = 1000									-- The extent to which number of naval bases play into amount of sips a nation wants
-- УДАЛЕНО --NDefines.NAI.NAVAL_STATES_SHIP_FACTOR = 1000								-- The extent to which number of states play into amount of sips a nation wants

NDefines.NAI.PRODUCTION_LINE_SWITCH_SURPLUS_NEEDED_MODIFIER = 0	-- 0.2		--delays the AI from upgrading air lines too long, this is handled by strategies instead

--------------
-- LAND AI
--------------

NDefines.NAI.MIN_AI_UNITS_PER_TILE_FOR_STANDARD_COHESION = 2.0				-- How many units should we have for each tile along a front in order to switch to standard cohesion (less moving around)
NDefines.NAI.MIN_FRONT_SIZE_TO_CONSIDER_STANDARD_COHESION = 2000			-- How long should fronts be before we consider switching to standard cohesion (under this, standard cohesion fronts will switch back to relaxed)

NDefines.NAI.ASSIGN_TANKS_TO_WAR_FRONT = 8.0		--4.0					-- Scoring factor for assigning tank divisions to active war fronts
NDefines.NAI.ASSIGN_TANKS_TO_NON_WAR_FRONT = 0.2	--0.4					-- Scoring factor for assigning tank divisions to non-war fronts

NDefines.NMilitary.PLAN_EXECUTE_RUSH = -10			-- -200					-- When looking for an attach target, this score limit is required in the battle plan to consider province for attack
NDefines.NAI.FALLBACK_LOSING_FACTOR = 0.0 			--1.0					-- The lower this number  the longer the AI will hold the line before sending them to the fallback line
NDefines.NAI.HOUR_BAD_COMBAT_REEVALUATE = 24		--48					-- if we are in combat for this amount and it goes shitty then try skipping it


NDefines.NAI.START_TRAINING_EQUIPMENT_LEVEL = 0.8							-- ai will not start to train if equipment drops below this level
NDefines.NAI.STOP_TRAINING_EQUIPMENT_LEVEL = 0.7							-- ai will not train if equipment drops below this level

NDefines.NAI.WANTED_MAX_FUEL_BUFFER_IN_DAYS_FOR_ARMY_MAX_CONSUMPTION = 365  -- AI will try to buffer at least this amount of days on max consumption, will trade if necesarry and will go into fuel saving mode/aggresive mode using this buffer 
NDefines.NAI.WANTED_MAX_FUEL_BUFFER_IN_DAYS_FOR_AIR_MAX_CONSUMPTION  = 365  -- AI will try to buffer at least this amount of days on max consumption, will trade if necesarry and will go into fuel saving mode/aggresive mode using this buffer
NDefines.NAI.WANTED_MAX_FUEL_BUFFER_IN_DAYS_FOR_NAVY_MAX_CONSUMPTION = 365  -- AI will try to buffer at least this amount of days on max consumption, will trade if necesarry and will go into fuel saving mode/aggresive mode using this buffer
NDefines.NAI.FUEL_RATIO_TO_EXIST_FUEL_SAVING_MODE = 0.40					-- countries will exit fuel saving mode if they have more fuel ratio than this

--NDefines.NAI.GENERATE_WARGOAL_THREAT_BASELINE = 0.6							-- The baseline for what the AI considers the world is getting dangerous and we want to generate wargoals with no antagonize value	

NDefines.NAI.TRADEABLE_FACTORIES_FRACTION = 0.8								-- Will at most trade away this fraction of factories.
NDefines.NAI.WAIT_YEARS_BEFORE_FREER_BUILDING = 0							-- The AI will skip considering certain buildings during the buildup phase, after htese many years it starts building them regardless of threat.
NDefines.NAI.MAX_THREAT_FOR_FIRST_YEAR_CIVILIAN_MODE = 0 					-- above this threshold, ai will leave first year civilian factory mode which bumps it civilian factory scores while building

NDefines.NAI.DOCKYARDS_PER_NAVAL_DESIRE_EFFECT = -100.0						-- Effects how much AI wants to build dockyards based on how navally focused they are in general. Recommended range -100.0 to 100.0.

--NDefines.NAI.NUM_SILOS_PER_CIVILIAN_FACTORIES = 0.0							-- ai will try to build a silo per this ratio of civ factories
--NDefines.NAI.NUM_SILOS_PER_MILITARY_FACTORIES = 0.0							-- ai will try to build a silo per this ratio of mil factories
--NDefines.NAI.NUM_SILOS_PER_DOCKYARDS = 0.0									-- ai will try to build a silo per this ratio of dockyards

--NDefines.NAI.NEW_LEADER_EXTRA_PP_FACTOR = 1.0								-- Country must have at least this many times extra PP to get new admirals or army leaders


--NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_LOW = 0.85							-- Minimum org % for a unit to actively attack an enemy unit when executing a plan
--NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_LOW = 0.85						-- Minimum strength for a unit to actively attack an enemy unit when executing a plan

--NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_MED = 0.65							-- (LOW,MED,HIGH) corresponds to the plan execution agressiveness level.
--NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_MED = 0.65	

--NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_HIGH = 0.5		
--NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_HIGH = 0.5	

--NDefines.NAI.PLAN_FACTION_STRONG_TO_EXECUTE = 0.65							-- % or more of units in an order to consider ececuting the plan

--NDefines.NAI.ORG_UNIT_NORMAL = 0.6											-- Organization % for unit to be considered normal
--NDefines.NAI.STR_UNIT_NORMAL = 0.6											-- Strength (equipment) % for unit to be considered normal

--NDefines.NAI.PLAN_FACTION_WEAK_TO_ABORT = 0.5						        -- % or more of units in an order to consider ececuting the plan
NDefines.NAI.ORG_UNIT_WEAK = 0.35 											-- Organization % for unit to be considered weak
NDefines.NAI.STR_UNIT_WEAK = 0.4 											-- Strength (equipment) % for unit to be considered weak

NDefines.NAI.AI_FRONT_MOVEMENT_FACTOR_FOR_READY = 0.5						-- If less than this fraction of units on a front is moving  AI sees it as ready for action

NDefines.NAI.PLAN_ACTIVATION_MAJOR_WEIGHT_FACTOR = 1						-- AI countries will hold on activating plans if stronger countries have plans in the same location. Majors count extra (value of 1 will negate this)
NDefines.NAI.PLAN_ACTIVATION_PLAYER_WEIGHT_FACTOR = 1						-- AI countries will hold on activating plans if player controlled countries have plans in the same location. Majors count extra (value of 1 will negate this)

NDefines.NAI.PLAN_MIN_SIZE_FOR_FALLBACK = 5000								-- A country with less provinces than this will not draw fallback plans  but rather station their troops along the front

--посмотрим, как это улучшит деф ИИ
NDefines.NAI.AREA_DEFENSE_SETTING_VP = true									-- Which settings will AI use for area defense by default


NDefines.NAI.MIN_AI_SCORE_TO_MOBILIZATION_LAW_OVERRIDE_HARD_CODED_SCORE = 1000.0
NDefines.NAI.MIN_AI_SCORE_TO_ECONOMY_LAW_OVERRIDE_HARD_CODED_SCORE = 1000.0
NDefines.NAI.MIN_AI_SCORE_TO_TRADE_LAW_OVERRIDE_HARD_CODED_SCORE = 1000.0
NDefines.NAI.MIN_AI_SCORE_TO_ALL_LAWS_OVERRIDE_HARD_CODED_SCORE = 1000.0

--------------
-- DESIGNS
--------------

NDefines.NAI.DEFAULT_MODULE_VARIANT_CREATION_XP_CUTOFF_LAND = 50 --50		-- Army XP needed before attempting to create a variant of a type that uses the tank designer (the tank designer DLC feature must be active).
NDefines.NAI.DEFAULT_MODULE_VARIANT_CREATION_XP_CUTOFF_NAVY = 25 --50		-- Same as above but for the ship designer.
NDefines.NAI.DEFAULT_MODULE_VARIANT_CREATION_XP_CUTOFF_AIR = 25 --25		-- Same as above but for the air designer.

NDefines.NAI.VARIANT_CREATION_XP_RESERVE_LAND = 50 --50						-- If the AI lacks army XP to create a variant it will reserve this much XP for variant creation so that it will eventually be able to create a variant.
NDefines.NAI.VARIANT_CREATION_XP_RESERVE_NAVY = 50 --50						-- Same as above but for navy XP.
NDefines.NAI.VARIANT_CREATION_XP_RESERVE_AIR  = 50 --50						-- Same as above but for air XP.

-- The AI uses the below values when selecting which design to make among the types that use the tank designer
-- (the tank designer DLC feature must be active). For each role, the highest priority AI design that can be
-- created, if any, is assigned a weight. Any design with a weight of zero or a weight that falls below the
-- cutoff is dropped. A random design is then picked from the remaining.
-- Weight is calculated as AlternativeFactor * DemandFactor.
-- An "alternative" is a producible design of the same archetype (each specialized type is its own archetype).

-- EAI: AI delays upgrading the main tank types too much because it wants to create absent types for its templates first
-- makes sense but I'd rather have it get its most used type upgraded first
NDefines.NAI.LAND_DESIGN_ALTERNATIVE_ABSENT = 1 --1000000
NDefines.NAI.LAND_DESIGN_ALTERNATIVE_OF_LESSER_TECH = 1 --10000
NDefines.NAI.LAND_DESIGN_ALTERNATIVE_OF_EQUAL_TECH = 1 --100
NDefines.NAI.LAND_DESIGN_ALTERNATIVE_OF_GREATER_TECH = 1

-- If a template may be reinforced with the archetype it's considered to be "demanded". If multiple conditions
-- are met, e.g. it's both in the field and in training, the largest value is used.

NDefines.NAI.LAND_DESIGN_DEMAND_FIELD_DIVISION = 50			--20
NDefines.NAI.LAND_DESIGN_DEMAND_TRAINING_DIVISION = 50		--15
NDefines.NAI.LAND_DESIGN_DEMAND_GARRISON_DIVISION = 10		--10
NDefines.NAI.LAND_DESIGN_DEMAND_UNUSED_TEMPLATE = 10		--1
NDefines.NAI.LAND_DESIGN_DEMAND_ABSENT = 10					--0

-- If a design with a weight when divided by the largest weight falls below this value it's excluded from the
-- selection. Valid values are in the range [0, 1] inclusive.

NDefines.NAI.LAND_DESIGN_CUTOFF_AS_PERCENTAGE_OF_MAX = 0.01		--0.25

-- The AI "desires" to spend XP on doctrines, templates, and equipment.
-- The desire is built up over time and when XP is available it spends it on the action that has the highest accumulated desire. After spending XP the desire is reset, in effect balancing the desires.
-- Below is the daily desire gain for each action.

NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_LAND_DOCTRINE = 1    -- How quickly is desire to unlock land doctrines accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_NAVAL_DOCTRINE = 1   -- How quickly is desire to unlock naval doctrines accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_AIR_DOCTRINE = 1     -- How quickly is desire to unlock air doctrines accumulated?

--EAI: make sure land template desire is always at the top, if the doctrine desire is high but the mod blocks it, AI wont create templates
NDefines.NAI.DESIRE_USE_XP_TO_UPDATE_LAND_TEMPLATE = 100.0 --2.0    -- How quickly is desire to update/create templates accumulated?

NDefines.NAI.DESIRE_USE_XP_TO_UPGRADE_LAND_EQUIPMENT = 2.0		-- How quickly is desire to update/create land equipment variants accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UPGRADE_NAVAL_EQUIPMENT = 100.0	-- How quickly is desire to update/create naval equipment variants accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UPGRADE_AIR_EQUIPMENT = 100.0		-- How quickly is desire to update/create air equipment variants accumulated?

NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_ARMY_SPIRIT = 0.4			-- How quickly is desire to unlock army spirits accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_NAVY_SPIRIT = 0.4			-- How quickly is desire to unlock naval spirits accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_AIR_SPIRIT = 0.4			-- How quickly is desire to unlock air spirits accumulated?

NDefines.NAI.DAYS_BETWEEN_CHECK_BEST_DOCTRINE = 7				-- Recalculate desired best doctrine to unlock with this many days inbetween.
NDefines.NAI.DAYS_BETWEEN_CHECK_BEST_TEMPLATE = 7				-- Recalculate desired best template to upgrade with this many days inbetween.
NDefines.NAI.DAYS_BETWEEN_CHECK_BEST_EQUIPMENT = 7				-- Recalculate desired best equipment to upgrade with this many days inbetween.

NDefines.NAI.GARRISON_TEMPLATE_SCORE_IC_FACTOR = 1.0			-- ai uses these defines while calculating garrison template score of a template.
NDefines.NAI.GARRISON_TEMPLATE_SCORE_MANPOWER_FACTOR = 0.05		-- formula is (template_ic * ic_factor + template_manpower * manpower_factor ) / template_supression (lower is better)

---------------

-- NDefines.NAI.REFIT_SHIP_RELUCTANCE = 5000							-- How often to consider refitting to new equipment variants for ships in the field
-- NDefines.NAI.REFIT_SHIP_PERCENTAGE_OF_FORCES = 0.30					-- How big part of the navy that should be considered for refitting

-- УДАЛЕНО --NDefines.NAI.DIVISION_DESIGN_MANPOWER_WEIGHT = 0 --0.005
-- УДАЛЕНО --NDefines.NAI.DIVISION_DESIGN_STOCKPILE_WEIGHT = 0 --0.01

--------------
-- NAVY
--------------

NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_MINE_SWEEPING = 0.10					-- maximum ratio of screens forces to be used in mine sweeping
NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_MINE_SWEEPING_PRIO_MAX_MINES = 250	-- highest mines for highest prio for mine missions
NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_MINE_LAYING = 0.05					-- maximum ratio of screens forces to be used in mine laying

NDefines.NAI.MISSING_CONVOYS_BOOST_FACTOR = 0.0								-- The more convoys a country is missing, the more resources it diverts to cover this.

NDefines.NAI.MIN_NAVAL_MISSION_PRIO_TO_ASSIGN = {  -- priorities for regions to get assigned to a mission
	0, -- HOLD (consumes fuel HOLD_MISSION_MOVEMENT_COST fuel while moving)
	200, -- PATROL		
	200, -- STRIKE FORCE 
	200, -- CONVOY RAIDING
	100, -- CONVOY ESCORT
	200, -- MINES PLANTING	
	100, -- MINES SWEEPING	
	0, -- TRAIN
	0, -- RESERVE_FLEET
	100, -- NAVAL INVASION SUPPORT
}

NDefines.NAI.HIGH_PRIO_NAVAL_MISSION_SCORES = {  -- priorities for regions to get assigned to a mission
	0, -- HOLD (consumes fuel HOLD_MISSION_MOVEMENT_COST fuel while moving)
	3800, -- PATROL - 100000
	1000, -- STRIKE FORCE 
	1500, -- CONVOY RAIDING
	3000, -- CONVOY ESCORT - 1000
	-1, -- MINES PLANTING	
	300, -- MINES SWEEPING	
	0, -- TRAIN
	0, -- RESERVE_FLEET
	1000, -- NAVAL INVASION SUPPORT
}

NDefines.NAI.MAX_MISSION_PER_TASKFORCE = {  -- max mission region/taskforce ratio
	0, -- HOLD (consumes fuel HOLD_MISSION_MOVEMENT_COST fuel while moving)
	1.5, -- PATROL		
	6, -- STRIKE FORCE 
	1.5, -- CONVOY RAIDING
	2, -- CONVOY ESCORT
	2, -- MINES PLANTING
	2, -- MINES SWEEPING
	0, -- TRAIN
	0, -- RESERVE_FLEET
	10, -- NAVAL INVASION SUPPORT
}

-- NDefines.NAI.ENEMY_NAVY_STRENGTH_DONT_BOTHER = 1000	--2,5				-- If the enemy has a navy at least these many times stronger that the own, don't bother invading
-- NDefines.NAI.MAX_DISTANCE_NAVAL_INVASION = 300.0		--200				-- AI is extremely unwilling to plan naval invasions above this naval distance limit.
NDefines.NAI.MAX_INVASION_SIZE = 18		--24								-- max invasion group size

NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_CONVOY_DEFENSE_MIN = 0.40 			-- maximum ratio of all screen-ships forces to be used in convoy defense (increases up to max as AI loses convoys).
NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_CONVOY_DEFENSE_MAX = 0.6 			-- maximum ratio of all screen-ships forces to be used in convoy defense (increases up to max as AI loses convoys).
NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_CONVOY_DEFENSE_MAX_CONVOY_THREAT = 500	-- AI will increase screen assignment for escort missions as threate increases


-----------------------------
-- AIR
-----------------------------

NDefines.NAI.WANTED_LAND_PLANES_PER_BASE_CAPACITY_FACTOR = 1.15				-- Scales how many land-based planes the AI want per air base space (excluding carriers).
NDefines.NAI.WANTED_LAND_PLANES_PER_DIVISION = 25							-- How many land-based planes the AI want for each division it wants.


-- NDefines.NAI.PRODUCTION_CARRIER_PLANE_BUFFER_RATIO = 3					-- in additiona to total deck size of carriers, we want at list this ratio to buffer it
-- NDefines.NAI.MAX_FUEL_CONSUMPTION_RATIO_FOR_AIR_TRAINING = 1				-- ai will use at most this ratio of affordable fuel for air training

-- NDefines.NAI.NAVAL_AIR_SUPERIORITY_IMPORTANCE = 1.0						-- Strategic importance of air superiority ( amount of enemy planes in area )
-- NDefines.NAI.NAVAL_SHIP_IN_PORT_AIR_IMPORTANCE = 20.0					-- Naval ship in the port air importance
-- NDefines.NAI.NAVAL_COMBAT_AIR_IMPORTANCE = 500.0							-- Naval combat air importance
NDefines.NAI.NAVAL_SHIP_AIR_IMPORTANCE = 10000		--2.0					-- Naval ship air importance
NDefines.NAI.NAVAL_IMPORTANCE_SCALE = 2.0									-- Naval total importance scale (every naval score get's multiplied by it)
-- NDefines.NAI.NAVAL_FIGHTERS_PER_PLANE = 1.0								-- Amounts of air superiority planes requested per enemy plane
NDefines.NAI.NAVAL_STRIKE_PLANES_PER_SHIP = 40								-- Amount of bombers requested per enemy ship
-- NDefines.NAI.PORT_STRIKE_PLANES_PER_SHIP = 20							-- Amount of bombers request per enemy ship in the port

NDefines.NAI.LAND_DEFENSE_CIVIL_FACTORY_IMPORTANCE = 800					-- Strategic importance of civil factories
NDefines.NAI.LAND_DEFENSE_MILITARY_FACTORY_IMPORTANCE = 880					-- Strategic importance of military factories
NDefines.NAI.LAND_DEFENSE_NAVAL_FACTORY_IMPORTANCE = 420					-- Strategic importance of naval factories

-- УДАЛЕНО --NDefines.NAI.LAND_DEFENSE_INTERSEPTORS_PER_BOMBERS = 1						-- Amount of air interceptor planes requested per enemy bomber
-- NDefines.NAI.LAND_DEFENSE_INTERSEPTORS_PER_PLANE = 0.0					-- Amount of air interceptor planes requested per enemy plane (non bomber)

-- NDefines.NAI.LAND_COMBAT_FIGHTERS_PER_PLANE = 2							-- Amount of air superiority planes requested per enemy plane
-- NDefines.NAI.STR_BOMB_MIN_ENEMY_FIGHTERS_IN_AREA = 400					-- If amount of enemy fighters is higher than this mission won't perform

NDefines.NAI.NAVAL_PATROL_PLANES_PER_SHIP_PATROLLING = 20	--10.0			-- Amount of naval patrol planes per ship on a patrol mission
NDefines.NAI.NAVAL_PATROL_PLANES_PER_SHIP_RAIDING = 40		--10.0			-- Amount of naval patrol planes per ship on a convoy raid mission
NDefines.NAI.NAVAL_PATROL_PLANES_PER_SHIP_ESCORTING = 20	--10.0			-- Amount of naval patrol planes per ship on a convoy escort mission


NDefines.NAir.MISSION_COMMAND_POWER_COSTS = {
	0.0, -- AIR_SUPERIORITY
	0.0, -- CAS
	0.0, -- INTERCEPTION
	0.0, -- STRATEGIC_BOMBER
	0.0, -- NAVAL_BOMBER
	0.0, -- DROP_NUKE
	0.0, -- PARADROP
	0.0, -- NAVAL_KAMIKAZE
	0.0, -- PORT_STRIKE
	0.0, -- ATTACK_LOGISTICS
	0.0, -- AIR_SUPPLY
	0.0, -- TRAINING
	0.0, -- NAVAL_MINES_PLANTING
	0.0, -- NAVAL_MINES_SWEEPING
	0.0, -- RECON
	0.0, -- NAVAL_PATROL
	0,0, -- BARRAGE
	0,0, -- SAM
}
/datum/job/rd
	title = "Research Director"
	flag = RD
	department_flag = MEDSCI
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the captain"
	selection_color = "#ffddff"
	idtype = /obj/item/weapon/card/id/rd
	req_admin_notify = 1
	access = list(access_rd, access_heads, access_tox, access_genetics, access_morgue,
			            access_tox_storage, access_teleporter, access_sec_doors,
			            access_research, access_robotics, access_xenobiology, access_ai_upload,
			            access_RC_announce, access_keycard_auth, access_tcomsat, access_gateway)
	minimal_access = list(access_rd, access_heads, access_tox, access_genetics, access_morgue,
			            access_tox_storage, access_teleporter, access_sec_doors,
			            access_research, access_robotics, access_xenobiology, access_ai_upload,
			            access_RC_announce, access_keycard_auth, access_tcomsat, access_gateway)
	minimal_player_age = 7

	// All science-y guys get bonuses for maxing out their tech.
	required_objectives=list(
		/datum/job_objective/maximize_research
	)

	pdaslot=slot_belt
	pdatype=/obj/item/device/pda/heads/rd

	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_or_collect(new /obj/item/device/radio/headset/heads/rd(H), slot_ears)
		H.equip_or_collect(new /obj/item/clothing/shoes/brown(H), slot_shoes)
		H.equip_or_collect(new /obj/item/clothing/under/rank/research_director(H), slot_w_uniform)
		//H.equip_or_collect(new /obj/item/device/pda/heads/rd(H), slot_belt)
		H.equip_or_collect(new /obj/item/clothing/suit/storage/labcoat(H), slot_wear_suit)
		H.equip_or_collect(new /obj/item/weapon/clipboard(H), slot_l_hand)
		if(H.backbag == 1)
			H.equip_or_collect(new H.species.survival_gear(H), slot_r_hand)
		else
			H.equip_or_collect(new H.species.survival_gear(H.back), slot_in_backpack)
		return 1



/datum/job/scientist
	title = "Scientist"
	flag = SCIENTIST
	department_flag = MEDSCI
	faction = "Station"
	total_positions = 5
	spawn_positions = 3
	supervisors = "the research director"
	selection_color = "#ffeeff"
	idtype = /obj/item/weapon/card/id/research
	access = list(access_robotics, access_tox, access_tox_storage, access_research, access_xenobiology)
	minimal_access = list(access_tox, access_tox_storage, access_research, access_xenobiology)
	alt_titles = list("Xenoarcheologist", "Anomalist", "Plasma Researcher", "Xenobiologist")

	// All science-y guys get bonuses for maxing out their tech.
	required_objectives=list(
		/datum/job_objective/maximize_research
	)

	pdaslot=slot_belt
	pdatype=/obj/item/device/pda/toxins

	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_or_collect(new /obj/item/device/radio/headset/headset_sci(H), slot_ears)
		H.equip_or_collect(new /obj/item/clothing/under/rank/scientist(H), slot_w_uniform)
		H.equip_or_collect(new /obj/item/clothing/shoes/white(H), slot_shoes)
		//H.equip_or_collect(new /obj/item/device/pda/toxins(H), slot_belt)
		H.equip_or_collect(new /obj/item/clothing/suit/storage/labcoat/science(H), slot_wear_suit)
		if(H.backbag == 1)
			H.equip_or_collect(new H.species.survival_gear(H), slot_r_hand)
		else
			H.equip_or_collect(new H.species.survival_gear(H.back), slot_in_backpack)
		return 1



/datum/job/roboticist
	title = "Roboticist"
	flag = ROBOTICIST
	department_flag = MEDSCI
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "research director"
	selection_color = "#ffeeff"
	idtype = /obj/item/weapon/card/id/research
	access = list(access_robotics, access_tox, access_tox_storage, access_tech_storage, access_morgue, access_research) //As a job that handles so many corpses, it makes sense for them to have morgue access.
	minimal_access = list(access_robotics, access_tech_storage, access_morgue, access_research) //As a job that handles so many corpses, it makes sense for them to have morgue access.
	alt_titles = list("Biomechanical Engineer","Mechatronic Engineer")
	required_objectives=list(
		/datum/job_objective/make_cyborg,
		/datum/job_objective/make_mommi,
		/datum/job_objective/make_ripley
	)

	pdaslot=slot_belt
	pdatype=/obj/item/device/pda/roboticist

	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_or_collect(new /obj/item/device/radio/headset/headset_sci(H), slot_ears)
		if(H.backbag == 2) H.equip_or_collect(new /obj/item/weapon/storage/backpack(H), slot_back)
		if(H.backbag == 3) H.equip_or_collect(new /obj/item/weapon/storage/backpack/satchel_norm(H), slot_back)
		H.equip_or_collect(new /obj/item/clothing/under/rank/roboticist(H), slot_w_uniform)
		H.equip_or_collect(new /obj/item/clothing/shoes/black(H), slot_shoes)
		//H.equip_or_collect(new /obj/item/device/pda/roboticist(H), slot_belt)
		H.equip_or_collect(new /obj/item/clothing/suit/storage/labcoat(H), slot_wear_suit)
//		H.equip_or_collect(new /obj/item/clothing/gloves/black(H), slot_gloves)
		H.equip_or_collect(new /obj/item/weapon/storage/toolbox/mechanical(H), slot_l_hand)
		if(H.backbag == 1)
			H.equip_or_collect(new H.species.survival_gear(H), slot_r_hand)
		else
			H.equip_or_collect(new H.species.survival_gear(H.back), slot_in_backpack)
		return 1
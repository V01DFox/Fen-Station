#define NABBER_PUNCH_LOW 4 // I hate to break it to you, but if nabbers are PUNCHING you - it isn't with their humanoid arms. It's with their hunting arms.
#define NABBER_PUNCH_HIGH 7 //YEOWCH. Yeah. Getting hit is like being punched by a toolbox with damage multipliers.
//Nabbers

/obj/item/bodypart/head/mutant/nabber
	icon_greyscale = BODYPART_ICON_NABBER
	bodytype = BODYTYPE_HUMANOID | BODYTYPE_ORGANIC | BODYTYPE_CUSTOM
	limb_id = SPECIES_NABBER
	brute_reduction = 2 //-2 brute per hit
	burn_modifier = 1.15//+1.15x burn to all burn damage
	brute_modifier = 0.75 //-0.25 brute damage
	burn_modifier = 2.5 //+250% burn

/obj/item/bodypart/head/mutant/nabber/Initialize(mapload)
	worn_ears_offset = new(
		attached_part = src,
		feature_key = OFFSET_EARS,
		offset_y = list("north" = 9, "south" = 9, "east" = 9, "west" = 9),
	)
	worn_head_offset = new(
		attached_part = src,
		feature_key = OFFSET_HEAD,
		offset_y = list("north" = 8, "south" = 8, "east" = 8, "west" = 8),
	)
	worn_mask_offset = new(
		attached_part = src,
		feature_key = OFFSET_FACEMASK,
		offset_y = list("north" = 7, "south" = 7, "east" = 7, "west" = 7),
	)
	return ..()

/obj/item/bodypart/chest/mutant/nabber
	icon_greyscale = BODYPART_ICON_NABBER
	bodytype = BODYTYPE_HUMANOID | BODYTYPE_ORGANIC | BODYTYPE_CUSTOM
	limb_id = SPECIES_NABBER
	brute_reduction = 2 //-2 brute per hit
	burn_modifier = 1.15//+1.15x burn to all burn damage
	brute_modifier = 0.75 //-0.25 brute damage
	burn_modifier = 2.5 //+250% burn

/obj/item/bodypart/chest/mutant/nabber/Initialize(mapload)
	worn_back_offset = new(
		attached_part = src,
		feature_key = OFFSET_BACK,
		offset_y = list("north" = 5, "south" = 5, "east" = 5, "west" = 5),
	)
	worn_accessory_offset = new(
		attached_part = src,
		feature_key = OFFSET_ACCESSORY,
		offset_y = list("north" = 5, "south" = 5, "east" = 5, "west" = 5),
	)
	return ..()


/obj/item/bodypart/arm/left/mutant/nabber
	icon_greyscale = BODYPART_ICON_NABBER
	bodytype = BODYTYPE_HUMANOID | BODYTYPE_ORGANIC | BODYTYPE_CUSTOM
	limb_id = SPECIES_NABBER
	unarmed_damage_low = NABBER_PUNCH_LOW
	unarmed_damage_high = NABBER_PUNCH_HIGH
	unarmed_attack_effect = ATTACK_EFFECT_CLAW
	brute_reduction = 2 //-2 brute per hit
	burn_modifier = 1.15//+1.15x burn to all burn damage
	brute_modifier = 0.75 //-0.25 brute damage
	burn_modifier = 2.5 //+250% burn

/obj/item/bodypart/arm/right/mutant/nabber
	icon_greyscale = BODYPART_ICON_NABBER
	bodytype = BODYTYPE_HUMANOID | BODYTYPE_ORGANIC | BODYTYPE_CUSTOM
	limb_id = SPECIES_NABBER
	unarmed_damage_low = NABBER_PUNCH_LOW
	unarmed_damage_high = NABBER_PUNCH_HIGH
	unarmed_attack_effect = ATTACK_EFFECT_CLAW
	brute_reduction = 2 //-2 brute per hit
	burn_modifier = 1.15//+1.15x burn to all burn damage
	brute_modifier = 0.75 //-0.25 brute damage
	burn_modifier = 2.5 //+250% burn


/obj/item/bodypart/leg/left/mutant/nabber
	icon_greyscale = BODYPART_ICON_NABBER
	bodytype = BODYTYPE_HUMANOID | BODYTYPE_ORGANIC | BODYTYPE_CUSTOM
	limb_id = SPECIES_NABBER
	brute_reduction = 2 //-2 brute per hit
	burn_modifier = 1.15//+1.15x burn to all burn damage
	brute_modifier = 0.75 //-0.25 brute damage
	burn_modifier = 2.5 //+250% burn


/obj/item/bodypart/leg/right/mutant/nabber
	icon_greyscale = BODYPART_ICON_NABBER
	bodytype = BODYTYPE_HUMANOID | BODYTYPE_ORGANIC | BODYTYPE_CUSTOM
	limb_id = SPECIES_NABBER
	brute_reduction = 2 //-2 brute per hit
	burn_modifier = 1.15//+1.15x burn to all burn damage
	brute_modifier = 0.75 //-0.25 brute damage
	burn_modifier = 2.5 //+250% burn


#undef NABBER_PUNCH_LOW
#undef NABBER_PUNCH_HIGH

#define NABBER_PUNCH_LOW 3 // Humanoid pair of hands is extremely weak and deals reduced damage.
#define NABBER_PUNCH_HIGH 5
//Nabbers

/obj/item/bodypart/head/mutant/nabber
	icon_greyscale = BODYPART_ICON_NABBER
	bodytype = BODYTYPE_HUMANOID | BODYTYPE_ORGANIC | BODYTYPE_CUSTOM
	limb_id = SPECIES_NABBER
	brute_reduction = 8 //-8 brute per hit
	burn_reduction = -2 //+2 burn to all burn damage
	brute_modifier = 0.75 //-0.25 brute damage
	burn_modifier = 1.75 //+75% burn

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
	brute_reduction = 8 //-8 brute per hit
	burn_reduction = -2 //+2 burn to all burn damage
	brute_modifier = 0.75 //-0.25 brute damage
	burn_modifier = 1.75 //+75% burn

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
	brute_reduction = 8 //-8 brute per hit
	burn_reduction = -2 //+2 burn to all burn damage
	brute_modifier = 0.75 //-0.25 brute damage
	burn_modifier = 1.75 //+75% burn

/obj/item/bodypart/arm/right/mutant/nabber
	icon_greyscale = BODYPART_ICON_NABBER
	bodytype = BODYTYPE_HUMANOID | BODYTYPE_ORGANIC | BODYTYPE_CUSTOM
	limb_id = SPECIES_NABBER
	unarmed_damage_low = NABBER_PUNCH_LOW
	unarmed_damage_high = NABBER_PUNCH_HIGH
	brute_reduction = 8 //-8 brute per hit
	burn_reduction = -2 //+2 burn to all burn damage
	brute_modifier = 0.75 //-0.25 brute damage
	burn_modifier = 1.75 //+75% burn


/obj/item/bodypart/leg/left/mutant/nabber
	icon_greyscale = BODYPART_ICON_NABBER
	bodytype = BODYTYPE_HUMANOID | BODYTYPE_ORGANIC | BODYTYPE_CUSTOM
	limb_id = SPECIES_NABBER
	brute_reduction = 8 //-8 brute per hit
	burn_reduction = -2 //+2 burn to all burn damage
	brute_modifier = 0.75 //-0.25 brute damage
	burn_modifier = 1.75 //+75% burn


/obj/item/bodypart/leg/right/mutant/nabber
	icon_greyscale = BODYPART_ICON_NABBER
	bodytype = BODYTYPE_HUMANOID | BODYTYPE_ORGANIC | BODYTYPE_CUSTOM
	limb_id = SPECIES_NABBER
	brute_reduction = 8 //-8 brute per hit
	burn_reduction = -2 //+2 burn to all burn damage
	brute_modifier = 0.75 //-0.25 brute damage
	burn_modifier = 1.75 //+75% burn


#undef NABBER_PUNCH_LOW
#undef NABBER_PUNCH_HIGH

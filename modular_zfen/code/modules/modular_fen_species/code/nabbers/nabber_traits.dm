/**
*Sharp Stabby traits. Currently just used for nabbers.
*/
/datum/action/innate/huntingarms
	name = "Toggle Sharp Attacks"
	desc = "Allows you to commit murder, this time - with your arms.."

/datum/action/innate/huntingarms/Grant(mob/living/carbon/grant_to)
	. = ..()
	if(!owner)
		return

/datum/action/innate/huntingarms/Activate()
	owner.balloon_alert(owner, "switching arms...")
	owner.visible_message(span_warning("[owner] attempts to raise their sharp arms..."))
	if(do_after(owner, 4 SECONDS))
		active = TRUE
		to_chat(owner, span_bolddanger("You are now striking with your sharp appendages."))
		owner.visible_message(span_bolddanger("[owner] raises their sharpened arms!")) //very clear if a GAS does this
		ADD_TRAIT(owner, TRAIT_SHARPCLAWS, INNATE_TRAIT)
		REMOVE_TRAIT(owner, TRAIT_ADVANCEDTOOLUSER, null) //Only way to get rid of this. Shitty but neccessary.
	else
		owner.visible_message(span_bolddanger("[owner] fails to raise their sharpened arms!")) //very clear if a GAS does this

/datum/action/innate/huntingarms/Deactivate()
	owner.balloon_alert(owner, "switching arms...")
	owner.visible_message(span_notice("[owner] attempts to lower their sharp arms..."))
	if(do_after(owner, 4 SECONDS))
		active = FALSE
		to_chat(owner, span_bolddanger("You are now not striking with your sharp appendages."))
		owner.visible_message(span_notice("[owner] lowers their sharpened arms!"))
		ADD_TRAIT(owner, TRAIT_ADVANCEDTOOLUSER, INNATE_TRAIT)
		REMOVE_TRAIT(owner, TRAIT_SHARPCLAWS, null)
	else
		owner.visible_message(span_bolddanger("[owner] fails to lower their sharpened arms!")) //very clear if a GAS does this

/datum/action/innate/eyelids
	name = "Toggle Eyeshielding"
	desc = "Allows you to blind yourself via opaque lenses in your eyes."

/datum/action/innate/eyelids/Grant(mob/living/carbon/grant_to)
	. = ..()
	if(!owner)
		return

/datum/action/innate/eyelids/Activate()
	var/obj/item/organ/internal/eyes/nabber/eyes = owner.get_organ_slot(ORGAN_SLOT_EYES)
	owner.balloon_alert(owner, "closing eyeshields...")
	owner.visible_message(span_warning("[owner] attempts to close opaque shielding over their eyes..."))
	if(do_after(owner, 1.2 SECONDS))
		active = TRUE
		to_chat(owner, span_bolddanger("You are now blind until you use the ability again."))
		owner.visible_message(span_bolddanger("[owner] closes their opaque shielding fully!")) //very clear if a GAS does this
		eyes.tint = INFINITY
		eyes.flash_protect = FLASH_PROTECTION_WELDER
	else
		owner.visible_message(span_bolddanger("[owner] fails to close their eyeshields!")) //very clear if a GAS does this

/datum/action/innate/eyelids/Deactivate()
	var/obj/item/organ/internal/eyes/nabber/eyes = owner.get_organ_slot(ORGAN_SLOT_EYES)
	owner.balloon_alert(owner, "opening eyeshields...")
	owner.visible_message(span_notice("[owner] attempts to open opaque shielding over their eyes..."))
	if(do_after(owner, 0.8 SECONDS))
		active = FALSE
		to_chat(owner, span_bolddanger("You are able to see until you use the ability again."))
		owner.visible_message(span_notice("[owner] opens their eye-sheilds."))
		eyes.tint = 0
		eyes.flash_protect = FLASH_PROTECTION_HYPER_SENSITIVE //wow if only blindness was easier to do
	else
		owner.visible_message(span_bolddanger("[owner] fails to open their eyeshields.")) //very clear if a GAS does this


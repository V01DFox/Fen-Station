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
	if (!active)
		Activate()

/datum/action/innate/huntingarms/Activate()
	active = TRUE
	owner.balloon_alert(owner, "switching arms...")
	owner.visible_message(span_warning("[owner] attempts to raise their sharp arms..."))
	if(!do_after(owner, owner, 4 SECONDS))
		return FALSE
	to_chat(owner, span_bolddanger("You are now striking with your sharp appendages."))
	owner.visible_message(span_bolddanger("[owner] raises their sharpened arms!")) //very clear if a GAS does this
	ADD_TRAIT(owner, TRAIT_SHARPCLAWS, INNATE_TRAIT)
	REMOVE_TRAIT(owner, TRAIT_ADVANCEDTOOLUSER, INNATE_TRAIT)

/datum/action/innate/huntingarms/Deactivate()
	active = FALSE
	owner.balloon_alert(owner, "switching arms...")
	owner.visible_message(span_notice("[owner] attempts to lower their sharp arms..."))
	if(!do_after(owner, owner, 4 SECONDS))
		return FALSE
	to_chat(owner, span_bolddanger("You are now not striking with your sharp appendages."))
	owner.visible_message(span_notice("[owner] lowers their sharpened arms!"))
	ADD_TRAIT(owner, TRAIT_ADVANCEDTOOLUSER, INNATE_TRAIT)
	REMOVE_TRAIT(owner, TRAIT_SHARPCLAWS, INNATE_TRAIT)

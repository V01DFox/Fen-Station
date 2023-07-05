/**
*COPYPASTED FROM SIGN LANGUAGE CODE.
*/
/datum/action/innate/huntingarms
	name = "Toggle Sharp Attacks"
	button_icon = 'icons/hud/actions.dmi'
	desc = "Allows you to commit murder, this time - with your arms.."
	owner_has_control = FALSE

/datum/action/innate/huntingarms/is_action_active(atom/movable/screen/movable/action_button/current_button)
	return HAS_TRAIT(owner, TRAIT_SHARPCLAWS)

/datum/action/innate/huntingarms/Grant(mob/living/carbon/grant_to)
	. = ..()
	if(!owner)
		return
	if (HAS_TRAIT(grant_to, TRAIT_SHARPCLAWS))
		if (!active)
			Activate()
	else
		show_action()

/datum/action/innate/huntingarms/Remove(mob/living/carbon/grant_to)
	. = ..()
	UnregisterSignal(grant_to, list(
		SIGNAL_ADDTRAIT(TRAIT_SHARPCLAWS),
		SIGNAL_REMOVETRAIT(TRAIT_SHARPCLAWS)
	))
	REMOVE_TRAIT(grant_to, TRAIT_SHARPCLAWS, TRAIT_GENERIC)

/datum/action/innate/huntingarms/Activate()
	active = TRUE
	ADD_TRAIT(owner, TRAIT_SHARPCLAWS, TRAIT_GENERIC)
	to_chat(owner, span_bolddanger("You are now striking with your sharp appendages."))

/datum/action/innate/huntingarms/Deactivate()
	active = FALSE
	REMOVE_TRAIT(owner, TRAIT_SHARPCLAWS, TRAIT_GENERIC)
	to_chat(owner, span_green("You have stopped striking with your sharp appendages."))

/// Shows the linked action to the owner Carbon.
/datum/action/innate/huntingarms/proc/show_action()
	owner_has_control = TRUE
	RegisterSignal(owner, SIGNAL_ADDTRAIT(TRAIT_SHARPCLAWS), PROC_REF(update_status_on_signal))
	RegisterSignal(owner, SIGNAL_REMOVETRAIT(TRAIT_SHARPCLAWS), PROC_REF(update_status_on_signal))
	GiveAction(owner)

/// Hides the linked action from the owner Carbon.
/datum/action/innate/huntingarms/proc/hide_action()
	owner_has_control = FALSE
	UnregisterSignal(owner, list(
		SIGNAL_ADDTRAIT(TRAIT_SHARPCLAWS),
		SIGNAL_REMOVETRAIT(TRAIT_SHARPCLAWS)
	))
	HideFrom(owner)


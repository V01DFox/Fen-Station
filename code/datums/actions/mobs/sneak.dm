/datum/action/cooldown/sneak
	name = "Blend In"
	desc = "Blend into the enviorment."
	button_icon = 'icons/mob/actions/actions_animal.dmi'
	button_icon_state = "sniper_zoom"
	background_icon_state = "bg_alien"
	overlay_icon_state = "bg_alien_border"
	check_flags = AB_CHECK_CONSCIOUS | AB_CHECK_INCAPACITATED | AB_CHECK_INCAPACITATED
	/// The alpha we go to when sneaking.
	var/sneak_alpha = 55

/datum/action/cooldown/sneak/Remove(mob/living/remove_from)
	if(HAS_TRAIT(remove_from, TRAIT_SNEAK))
		remove_from.alpha = initial(remove_from.alpha)
		REMOVE_TRAIT(remove_from, TRAIT_SNEAK, name)

	return ..()
/*
MASSIVE FENSTATION EDIT - Balances base sneak
*/
/datum/action/cooldown/sneak/Activate(atom/target)
	if(HAS_TRAIT(owner, TRAIT_SNEAK))
		owner.balloon_alert(owner, "attempting to become visible...")
		owner.visible_message(span_notice("[owner] attempts to fade in..."))
		if(do_after(owner, 6 SECONDS))
			owner.alpha = initial(owner.alpha)
			to_chat(owner, span_noticealien("You reveal yourself!"))
			REMOVE_TRAIT(owner, TRAIT_SNEAK, name)
		else
			owner.visible_message(span_bolddanger("[owner] is interrupted!"))
	else
		owner.balloon_alert(owner, "attempting to become invisible...")
		owner.visible_message(span_notice("[owner] attempts to fade into their environment..."))
		if(do_after(owner, 6 SECONDS))
			owner.alpha = sneak_alpha
			to_chat(owner, span_noticealien("You blend into the environment..."))
			ADD_TRAIT(owner, TRAIT_SNEAK, name)
		else
			owner.visible_message(span_bolddanger("[owner] is interrupted!"))
	return TRUE

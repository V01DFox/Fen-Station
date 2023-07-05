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
	ADD_TRAIT(owner, TRAIT_SHARPCLAWS, SPECIES_TRAIT)
	REMOVE_TRAIT(owner, TRAIT_ADVANCEDTOOLUSER, SPECIES_TRAIT) //Stops GAS from using things like scanners/etc with hunting arms out
	to_chat(owner, span_bolddanger("You are now striking with your sharp appendages.")) //TODO: Make this delayed.

/datum/action/innate/huntingarms/Deactivate()
	active = FALSE
	REMOVE_TRAIT(owner, TRAIT_SHARPCLAWS, SPECIES_TRAIT)
	ADD_TRAIT(owner,TRAIT_ADVANCEDTOOLUSER, SPECIES_TRAIT)
	to_chat(owner, span_green("You have stopped striking with your sharp appendages."))



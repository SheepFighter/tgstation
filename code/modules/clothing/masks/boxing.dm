/obj/item/clothing/mask/balaclava
	name = "balaclava"
	desc = "LOADSAMONEY"
	icon_state = "balaclava"
	item_state = "balaclava"
	flags = BLOCKHAIR
	flags_inv = HIDEFACE
	visor_flags_inv = HIDEFACE
	w_class = 2
	action_button_name = "Adjust Balaclava"
	ignore_maskadjust = 0

/obj/item/clothing/mask/balaclava/attack_self(var/mob/user)
	adjustmask(user)

/obj/item/clothing/mask/luchador
	name = "Luchador Mask"
	desc = "Worn by robust fighters, flying high to defeat their foes!"
	icon_state = "luchag"
	item_state = "luchag"
	flags = BLOCKHAIR
	flags_inv = HIDEFACE
	w_class = 2

/obj/item/clothing/mask/luchador/speechModification(message)
	if(copytext(message, 1, 2) != "*")
		message = _replacetext(message, "captain", "CAPIT�N")
		message = _replacetext(message, "station", "ESTACI�N")
		message = _replacetext(message, "sir", "SE�OR")
		message = _replacetext(message, "the ", "el ")
		message = _replacetext(message, "my ", "mi ")
		message = _replacetext(message, "is ", "es ")
		message = _replacetext(message, "it's", "es")
		message = _replacetext(message, "friend", "amigo")
		message = _replacetext(message, "buddy", "amigo")
		message = _replacetext(message, "hello", "hola")
		message = _replacetext(message, " hot", " caliente")
		message = _replacetext(message, " very ", " muy ")
		message = _replacetext(message, "sword", "espada")
		message = _replacetext(message, "library", "biblioteca")
		message = _replacetext(message, "traitor", "traidor")
		message = _replacetext(message, "wizard", "mago")
		message = uppertext(message)	//Things end up looking better this way (no mixed cases), and it fits the macho wrestler image.
		if(prob(25))
			message += " OLE!"
	return message

/obj/item/clothing/mask/luchador/tecnicos
	name = "Tecnicos Mask"
	desc = "Worn by robust fighters who uphold justice and fight honorably."
	icon_state = "luchador"
	item_state = "luchador"

/obj/item/clothing/mask/luchador/rudos
	name = "Rudos Mask"
	desc = "Worn by robust fighters who are willing to do anything to win."
	icon_state = "luchar"
	item_state = "luchar"
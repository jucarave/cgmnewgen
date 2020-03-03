/// eventDummyQuestion()

events_first_question = [
	[EVENT_SHOW_MESSAGE, "Sabes qué? ya me he olvidado :)", "Pregunton", sprAvatarPortrait]
];

events_second_question = [
	[EVENT_SHOW_MESSAGE, "Vaya listillo!", "Pregunton", sprAvatarPortrait]
];

events_third_question = [
	[EVENT_SHOW_MESSAGE, "Aún no está implementado, sorry", "Pregunton", sprAvatarPortrait]
];

events = [
	[EVENT_SHOW_MESSAGE, "Hola, ¿Puedo hacerte una pregunta?", "Pregunton", sprAvatarPortrait],
	[EVENT_SHOW_QUESTION, "Adelante", "Ya la has hecho", "No, mejor peleemos", "Salir"],
	[events_first_question, events_second_question, events_third_question, noone]
];
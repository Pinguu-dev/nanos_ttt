Events.on("UpdateWeaponAmmo", function(enable, clip, bag) {
	if (enable)
		$("#weapon_ammo_container").show();
	else
		$("#weapon_ammo_container").hide();

	$("#weapon_ammo_clip").html(clip);
	$("#weapon_ammo_bag").html("/ " + bag);
});

Events.on("UpdateHealth", function(health) {
	$(".inner_hp_progress").html(health + " HP");

	var percent = health;
	if(health > 100)
		percent = 100;

	$(".progressbar_health").width(percent + '%');
});

Events.on("UpdateKarma", function(karma) {
	$(".inner_karma_progress").html(karma + " Karma");

	var percent = karma / 10;
	if(percent > 100)
		percent = 100;

	$(".progressbar_karma").width(percent + '%');
});

function secondsTimeSpanToHMS(s) {
    var h = Math.floor(s/3600); 
    s -= h*3600;
    var m = Math.floor(s/60); 
    s -= m*60;
    return (m < 10 ? '0'+m : m)+":"+(s < 10 ? '0'+s : s); 
}

Events.on("UpdateRoundTimer", function(time) {
	$(".round_time").html(secondsTimeSpanToHMS(time));
});

Events.on("UpdateFraction", function(fraction) {
	if(fraction == 0) {
		// Preparing...
		$(".fraction").html("Preparing");
		$(".fraction").css("background-color", "#474444");
	} else if(fraction == 1) {
		// Innoncent
		$(".fraction").html("Innocent");
		$(".fraction").css("background-color", "#04750d");
	} else if(fraction == 2) {
		// Terrorist
		$(".fraction").html("Traitor");
		$(".fraction").css("background-color", "#a6240d");
	} else {
		// ERROR
		$(".fraction").html("Round Over");
		$(".fraction").css("background-color", "#474444");
	}
});

Events.on("SendNotification", function(text, art) {
	//$.notify(text, art);
	$.notify(text, {
		style: 'grey'
	  });
});


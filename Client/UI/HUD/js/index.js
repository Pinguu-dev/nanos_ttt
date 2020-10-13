// Start Overlay Effect - automatically when WebUI loads
$(document).ready(function() {
	setTimeout(function() {
		$("#start_overlay").fadeOut(1000);
	}, 2000);
});

$.notify.addStyle('grey', {
	html: "<div><span data-notify-text/></div>",
	classes: {
		base: {
			"white-space": "nowrap",
			"background-color": "rgba(0,0,0,0.5)",
			"color": "#fff",
			"padding-top": "5px",
			"padding-bottom": "5px",
			"padding-left": "10px",
			"padding-right": "10px",
			"border-radius": "10px"
		},
		superblue: {
			"color": "white",
			"background-color": "blue"
		}
	}
});

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
		// Traitor
		$(".fraction").html("Traitor");
		$(".fraction").css("background-color", "#a6240d");
	} else if(fraction == 3) {
		// Detective
		$(".fraction").html("Detective");
		$(".fraction").css("background-color", "#00008B");
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

Events.on("VoiceIcon", function(active) {
	if(active) 
		$("#voice_icon").css("display", "block")
	else 
		$("#voice_icon").css("display", "none")
});

// Overlays Start
Events.on("TTT_InnoWonScreen", function(active) {
	if (active)
		$("#inno_won_overlay").show();
	else
		$("#inno_won_overlay").hide();
});

Events.on("TTT_TerrorWonScreen", function(active) {
	if (active)
		$("#terror_won_overlay").show();
	else
		$("#terror_won_overlay").hide();
});
// Overlays End

// Nametags Start
Events.on("SetNametag", function(enabled, name, color, health) {
	if (enabled) {
		$("#ttt_nametag").show();
		$("#ttt_nametag .name").html(name);
		$("#ttt_nametag .name").css("color", color);

		var maxhealth = 100;
	
		if(health > maxhealth * 0.9) {
			$("#ttt_nametag .health").css("color", "rgba(0, 255, 0, 255)"); // Healthy
			$("#ttt_nametag .health").html("Healthy");
		}
		else if(health > maxhealth * 0.7) {
			$("#ttt_nametag .health").css("color", "rgba(170, 230, 10, 255)"); // Hurt
			$("#ttt_nametag .health").html("Hurt");
		}
		else if(health > maxhealth * 0.45) {
			$("#ttt_nametag .health").css("color", "rgba(230, 215, 10, 255)"); // Wounded
			$("#ttt_nametag .health").html("Wounded");
		}
		else if(health > maxhealth * 0.2) {
			$("#ttt_nametag .health").css("color", "rgba(255, 140, 0, 255)"); // Badwound
			$("#ttt_nametag .health").html("Badwound");
		}
		else {
			$("#ttt_nametag .health").css("color", "rgba(255, 0, 0, 255)"); // DEAD
			$("#ttt_nametag .health").html("HE'S DEAD");
		}
	}
	else {
		$("#ttt_nametag").hide();
	}
});
// Nametags End
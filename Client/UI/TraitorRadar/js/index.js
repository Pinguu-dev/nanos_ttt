Events.on("AddRadarPoint", function (id) {
    $("body").append("<div id='radar_" + id + "' class='radar'><div class='logo' ><img src='img/radar.png' /></div ><div id='radar_" + id + "_text' class='text'></div></div >");
});

Events.on("UpdateRadarPosition", function (id, x, y) {
    $("#radar_" + id).css("top", y);
    $("#radar_" + id).css("left", x);
});

Events.on("RemoveRadarPoint", function (id) {
    $("#radar_" + id).remove();
    console.log("radar " + id + " removed");
});

Events.on("RemoveAllRadarPoints", function() {
    $(".radar").remove();
});
Events.Subscribe("setPosition", function (x, y) {
    $("#name").css("top", y)
    $("#name").css("left", x)
})

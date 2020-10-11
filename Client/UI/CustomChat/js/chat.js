let chat =
{
	size: 0,
	container: null,
	input: null,
	enabled: false,
    active: true,
    timer: null,
    previous: "",
	hide_chat: 15*1000 // 15 - seconds
};

Events.on("PushChat", function(msg) {
	chatAPI.push(msg);
});

Events.on("CallEnableChatInput", function() {
	enableChatInput(true);
	show();
});

Events.on("CloseChatInput", function() {
	enableChatInput(false);
	hide();
});

function myKeyPress(e){
	var keynum;

	if(window.event) {                
	  keynum = e.keyCode;
	} else if(e.which){                
	  keynum = e.which;
	}

	if(keynum == 13)  {		
		enterText();
	} else if(keynum == 38) {
		chat.input.children("input").val(chat.previous);
	}
}

function stripHtml(html){
    var temporalDivElement = document.createElement("div");
    temporalDivElement.innerHTML = html;
    return temporalDivElement.textContent || temporalDivElement.innerText || "";
}

function enterText() {
	var value = chat.input.children("input").val();
	value = stripHtml(value);
	
	if (value.length > 0) {
		chat.previous = value;
		if (value[0] == "/") {
			value = value.substr(1);

			if (value.length > 0 && value.length <= 100)
			   Events.Call("CommandExecute", value);		  
		}
		else {
			if (value.length <= 100)
				Events.Call("ChatMessage", value);
		}
	}
	enableChatInput(false);
	hide();
}

function enableChatInput(enable)
{
	if(chat.active == false
		&& enable == true)
		return;
    if (enable != (chat.input != null))
	{
        if (enable)
        {
            $("#chat").css("opacity", 1);
            chat.input = $("#chat").append('<div><input id="chat_msg" type="text" onkeypress="return myKeyPress(event)" /></div>').children(":last");
            chat.input.children("input").focus();
			console.log("input created");
			Events.Call("ChangeChatState", true);
        }
		else
		{
            chat.input.fadeOut('fast', function()
			{
                chat.input.remove();
                chat.input = null;
				Events.Call("ChangeChatState", false);
            });
        }
    }
}

var chatAPI =
{
	push: (text) =>
	{
		chat.size++;
		if (chat.size >= 50)
		{
			chat.container.children(":first").remove();
        }
        chat.container.append("<li>" + text + "</li>");
        chat.container.scrollTop(9999);
	},
	clear: () =>
	{
		chat.container.html("");
	},
	activate: (toggle) =>
	{
		if (toggle == false
			&& (chat.input != null))
			enableChatInput(false);

		chat.active = toggle;
	},
	show: (toggle) =>
	{
		if(toggle)
			$("#chat").show();
		else
			$("#chat").hide();

		chat.active = toggle;
	}
};

function hide() {
    chat.timer = setTimeout(function () {
        $("#chat").css("opacity", 0.5);
		$("#chat_messages").css("overflow",'hidden');
    }, chat.hide_chat);
}

function show() {
    clearTimeout(chat.timer);
    $("#chat").css("opacity", 1);
	$("#chat_messages").css("overflow",'overlay');
}

$(document).ready(function()
{
    chat.container = $("#chat ul#chat_messages");
    hide();
    $(".ui_element").show();
   
});

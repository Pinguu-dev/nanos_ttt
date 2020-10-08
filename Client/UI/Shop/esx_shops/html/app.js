function buyItem(item) {
	console.log("item bought")
}

function addItem(itemID, itemLabel, itemPrice, itemImageLink)
{
	$(".items").append(`
        <div class="item" onclick="buyItem('`+itemID+`')">
            <img src="`+itemImageLink+`">
            <div class="label">
                <p>`+itemLabel+`<p>
                <p>Price: `+itemPrice+`$<p>
            </div>
        </div>
    `);
	
}

document.addEventListener('DOMContentLoaded', function () {
    addItem(1, "Radar", "1337", "https://icons.iconarchive.com/icons/martz90/circle-addon1/256/radar-icon.png")
	addItem(2, "Hider", "1337", "https://icons.iconarchive.com/icons/hopstarter/soft-scraps/256/User-Administrator-Blue-icon.png")
	addItem(3, "Radio", "1337", "https://icons.iconarchive.com/icons/martz90/hex/256/radio-icon.png")
	addItem(4, "Lighter", "1337", "https://icons.iconarchive.com/icons/toma4025/rumax/256/lighter-zippo-icon.png")
});



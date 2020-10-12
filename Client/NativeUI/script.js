let menu = new MainMenu("Native Menu");
let textMenuItem = new TextMenuItem("Text menu item", "corresponding data");
textMenuItem.addOnClickEvent({
    trigger: data => {
        console.log("Click " + data);
    }
});
textMenuItem.addOnSelectEvent({
    trigger: data => {
        console.log("Select " + data);
    }
});
menu.add(textMenuItem);

menu.add(new TextMenuItem("Caption", "corresponding data", "My Lorem ipsum dolor sit amet caption"));

let sliderMenuItem = new SliderMenuItem("Slider menu item", 0, 15, 1, 7);
sliderMenuItem.addOnChangeEvent({
    trigger: data => {
        console.log("change " + data);
    }
});
menu.add(sliderMenuItem);

menu.add(new CheckboxMenuItem("Checkbox false", false));
menu.add(new CheckboxMenuItem("Checkbox true", true));

let listMenuItem = new ListMenuItem("List Menu", [{ DisplayText: "AAA", customField: "Jump" }, { DisplayText: "BBB", otherCustomField: "Jump" }], 0);
listMenuItem.addOnChangeEvent({
    trigger: data => {
        console.log("change " + JSON.stringify(data));
    }
});
menu.add(listMenuItem);

menu.add(new TextMenuItem("Badge Text menu item", "my data", "my caption", MenuBadge.SHOP_AMMO));

let subMenuItem = new SubMenuItem("Sub menu item 1");
let subMenuTextMenuItem = new TextMenuItem("First sub menu item", "my data");
subMenuTextMenuItem.addOnClickEvent({
    trigger: data => {
        console.log("click " + data);
    }
});
subMenuItem.add(subMenuTextMenuItem); /* add subMenuTextMenuItem to the submenu */
menu.add(subMenuItem); /** add submenu to the mainmenu */

//mp.events.add("render", () => menu.render(0.1, 0.1));
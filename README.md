# Labeled Z index
Lost track of your _Z Index_ ? This plugin allow you to assign name to _Z Index_ just like _Physics/Render_ layer in Godot.

This is an 3.x plugin. I will update this plugin if Godot 4 still doesnt have _Z Index_ labeling feature.

# Installation
Download or clone or add this repository as a submodule into your `res://addons/` folder.

Go to your Project Setting -> Plugins and enable this plugin.

# Assign name to your Z Index
Just like how you would assign name to your _Physics/Render_ layer, go to _Project Setting -> General -> Layer Names -> _Z Index_

Now add your _Z Index_ number of choice into the _Z Index_ dictionary. Keep in mind that the key must be a __String__ and the value must be an __Integer__.

Otherwise the plugin will ignore it.

![Screenshot_20221028_233029](https://user-images.githubusercontent.com/68549456/198691268-15696c75-8a17-4916-9670-47713e84dc2b.jpg)

# Set Z Index
The _Z Index_ property is located in CanvasItem category in the inspector. If you assigned the name correctly, a list of _Z Index_ should drop down.

Pick one and see if the _Z Index_ property in your __Node2D__ changed. If not, please open an issue.

![Screenshot_20221028_233626](https://user-images.githubusercontent.com/68549456/198691298-e91ffc23-61d4-4699-b507-89e2de26641e.jpg)

# Known issue
Control nodes _Z Index_ only work in the editor:

Control node also inherits from CanvasItem so it's possible to set _Z Index_ at run time with

`VisualServer.canvas_item_set_z_index(rid, z_index)`

# License
[MIT](https://choosealicense.com/licenses/mit/)

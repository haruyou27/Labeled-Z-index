# BetterZindex
Lost track of your Z Index ? This plugin allow you to assign name to Z Index just like Physics/Render layer in Godot.

This is an 3.x plugin. I will update this plugin if Godot 4 still doesnt have Z Index naming feature.

# Installation
Download or clone this repository into your res://addons/ folder.
Go to your Project Setting -> Plugins and enable this plugin.

# Assign name to your Z Index
Just like how you would assign name to your Physics/Render layer, go to Project Setting -> General -> Layer Names -> Z Index

Now add your Z Index number of choice into the Z Index dictionary. Keep in mind that the key must be a string and the value must be an integer. Otherwise the plugin will ignore it.

![Screenshot_20221028_233029](https://user-images.githubusercontent.com/68549456/198691268-15696c75-8a17-4916-9670-47713e84dc2b.jpg)

# Set Z Index
The Z Index property is located in CanvasItem category in the inspector. It's "Not set" by default (See Limitation). If you has assign the name right, a list of Z Index should drop down. Pick one and see if the Z Index property in your Node2D changed. If not, please open an issue.

![Screenshot_20221028_233626](https://user-images.githubusercontent.com/68549456/198691298-e91ffc23-61d4-4699-b507-89e2de26641e.jpg)

# Limitation
There's no way to get Z Index of a CanvasItem, VisualServer doesn't have any method that return data from a CanvasItem RID. So there's no way to know what is the Z Index of a Controls node. It seems like in Godot 4 the Z Index property will be move to CanvasItem.

And because of that, it will always show "Not set" by default.

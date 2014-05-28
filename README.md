
BackupHelper
============

Copyright 2014 Joergen Ibsen

<http://www.ibsensoftware.com/>


About
-----

BackupHelper is a [Lightroom][] plug-in that requests a catalog backup next
time Lightroom exits.

You can do this manually by opening the Catalog Settings, and choose the
appropriate item in the Backup popup of the General tab. This plug-in is
merely a (slightly more) convenient way to do this.

For more information on Lightroom plug-ins, check the [Lightroom SDK][SDK].

[Lightroom]: http://www.adobe.com/products/photoshop-lightroom.html
[SDK]: http://www.adobe.com/devnet/photoshoplightroom.html


Usage
-----

Lightroom requires plug-ins to be in folders with special extensions. For
BackupHelper, this means you need to place the Lua files in a folder called
`BackupHelper.lrplugin`

If you create this folder in one of the default locations Lightroom looks for
plug-ins, it should be picked up automatically. Otherwise you will have to
open the Plug-in Manager, click Add, and point Lightroom to where the folder
is (and remember, if the folder containing the Lua files does not have the
`.lrplugin` extension, Lightroom will not recognize it).

After BackupHelper is added to Lightroom, you should see it in the Library
menu under the Plugin-Extras submenu. When you select it, a backup will be
suggested the next time you exit Lightroom.

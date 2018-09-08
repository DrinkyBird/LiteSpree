LiteSpree is an addon for Zandronum that adds multi kills and killing sprees.
It uses modern Zandronum features to make it as light and featureful as
possible, while avoiding problems with other solutions like ZandroSpree,
such as mod compatibility issues. It hasn't reached full feature parity with
other such mods, yet.

Currently it supports:
* All of your favourite multi kills!
* All of your favourite killing sprees!
* Fits in a whole hard drive sector! Under 4kb!
* Uses named scripts - mod conflicts are a thing of the past! (hopefully)
* Translatable strings
* Announcers are seperated from the core. This means you can easily have your
  own custom announcers!
  

Announcers:
  Announcers are seperated from the core of LiteSpree, allowing them to be
  easily customised. A pack of 4 stock announcers, the same as ZandroSpree,
  are included in a seperate litespree-announcers PK3. It is recommended
  that server hosts add this file as an optional WAD (-optfile).
  
  The stock announcers are:
  * 0. Unreal Tournament 2004 Male
  * 1. Unreal Tournament 2003 Male
  * 2. Unreal Tournament 2004 Female
  * 3. "Sexy" Female
  
  The announcer can be changed with the litespree_announcer CVar.
  

  If you want to make your own announcer pack, it's easy! Sound files use
  the following naming scheme:
  
  LTSPa<X><Y><Z>
  
  where
   <X> is the number of the announcer (from 0-9),
   <Y> is the type of announcement (0 = multi-kill, 1 = spree),
   <Z> is the number of the multi kill or spree (zero-indexed).
   
   For example:
     LTSPa106.ogg -- announcer 1, multi-kill 6 (holy shit)
     LTSPa212.ogg -- announcer 1, spree 2 (dominating)


Configuration:
  You can use the following CVars to configure LiteSpree:
  
  CLIENT SIDE
  * litespree_announcer	 (default 0)
      Sets the announcer ID, from 0-9
	  
  * litespree_volume  (default 100)
      Sets the announcer volume, from 0-100
	  
  * litespree_show_messages  (default true)
      Sets whether to show messages or not. Unfortunately, this also
	  disables announcements, I'll change this eventually...
	  
  * litespree_message_time  (default 1.0)
      Sets how long messages will be displayed for, in seconds.
	  
  SERVER SIDE
  * litespree_multi_timeout  (default 120)
      Sets the multi-kill timeout, in tics.
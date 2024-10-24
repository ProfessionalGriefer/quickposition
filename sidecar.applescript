on run {}
	
	(* Your script goes here *)
	# Author: Vincent Nahn
	
	# GUI script to open the System Settings and click on the button which activates Sidecar
	# It would be better to to it through an API call but I couldn't find anything better than this
	# Writing this AppleScript script was not fun at all
	
	
	# Currently Version 15
	set OSmajor to system attribute "sys1"
	
	
	if OSmajor < 15 then
		log "[WARNING]: OS Version less than 15. Might not be working as expected."
	end if
	
	tell application "System Settings"
		activate
		delay 1
		set the current pane to pane id "com.apple.Displays-Settings.extension"
		#reveal anchor "sidecarSection" of current pane
		
	end tell
	
	
	
	tell application "System Events"
		
		
		repeat until pop up button "Add" of group 1 of group 2 of splitter group 1 of group 1 of window "Displays" of process "System Settings" exists
		end repeat
		click pop up button "Add" of group 1 of group 2 of splitter group 1 of group 1 of window "Displays" of process "System Settings"
		
		# Get the iPad name from the parameters
		
		repeat until menu item "iPadName" of menu "Add" of pop up button "Add" of group 1 of group 2 of splitter group 1 of group 1 of window "Displays" of application process "System Settings" of application "System Events" exists
		end repeat
		click menu item "iPadName" of menu "Add" of pop up button "Add" of group 1 of group 2 of splitter group 1 of group 1 of window "Displays" of application process "System Settings" of application "System Events"
		
		
		(*
	-- Idea is to click the last iPad Item, but AppleScript is too primitive to do even that
	set menuItems to menu items of menu "Add" of pop up button "Add" of group 1 of group 2 of splitter group 1 of group 1 of window "Displays" of application process "System Settings" of application "System Events"
	set iPadItems to {}
	
	-- Loop through the menu items and find all "Vincent’s iPad" items
	repeat with aMenuItem in iPadItems
		if name of aMenuItem is "iPadName" then
			set end of iPadItems to aMenuItem
		end if
	end repeat
	*)
		
		
		
	end tell
	
	-- Close the Settings window
	tell application "System Settings"
		quit
	end tell
	return 0
	
end run

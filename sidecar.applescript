on run {}
	
	(* Your script goes here *)
	# Author: Vincent Nahn
	
	# GUI script to open the System Settings and click on the button which activates Sidecar
	# It would be better to to it through an API call but I couldn't find anything better than this
	# Writing this AppleScript script was not fun at all


	set userLocale to user locale of (system info)
	set displayName to "templeOS"
	set addButtonName to "Add"

	if userLocale is "de_DE" then
		set addButtonName to "Hinzufügen"
	end if
	
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
		set addButton to pop up button addButtonName of group 1 of group 2 of splitter group 1 of group 1 of window "Displays" of process "System Settings"
		

		repeat until addButton exists
		end repeat
		click addButton
		
		set monitorsMenu to menu addButtonName of addButton
		
		repeat until menu item displayName of monitorsMenu exists
		end repeat

		
		set lastDisplayNameOccurence to -1
		set monitorItemsCount to count menu items of monitorsMenu
		
		repeat with i from 1 to monitorItemsCount
			set currentItem to menu item i of monitorsMenu
			if (name of currentItem) is equal to displayName then
				set lastDisplayNameOccurence to i
			end if
		end repeat
		
		click menu item lastDisplayNameOccurence of monitorsMenu
	end tell
	
	-- Close the Settings window
	tell application "System Settings"
		quit
	end tell
	return 0
	
end run

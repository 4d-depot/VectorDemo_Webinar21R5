// Opens the Ticket Finder window in its own process (a single instance at a time).
#DECLARE($inOwnProcess : Boolean)

If (Not($inOwnProcess))
	var $process:=New process(Current method name; 0; "Ticket Finder"; True; *)
	BRING TO FRONT($process)
	return 
End if 

var $window:=Open form window("TicketFinder"; Plain form window; Horizontally centered; Vertically centered)
DIALOG("TicketFinder")
CLOSE WINDOW($window)

//%attributes = {}

//var $test:=ds.Tickets.getIndexes()
For each ($ticket; ds.Tickets.all())
	$ticket.IndexedVector:=Null
	$ticket.Vector:=Null
	$ticket.save()
	
	//$enr:=ds.Info.query("TicketID=:1"; $ticket.Id)
	//$ticket.IndexedVector:=$enr[0].Vector
	//$ticket.Vector:=$enr[0].Vector
	//$ticket.save()
	
	//var $tmp:=ds.Table_1.new()
	//$tmp.TicketID:=$ticket.Id
	//$tmp.Vector:=$ticket.Vector
	//$tmp.save()
End for each 

TRACE
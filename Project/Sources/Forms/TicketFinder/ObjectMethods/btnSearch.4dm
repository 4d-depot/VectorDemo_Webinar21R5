var $client:=cs.AIKit.OpenAI.new()

var $result:={}

If (Form.queryText#"")
	//Question example : Retrieves all tickets when the VPN connection is lost
	$result:=$client.embeddings.create(Form.queryText; "EmbeddingModel")
	
	If ($result.success)
		var $vector : 4D.Vector:=$result.embedding.embedding
	Else 
		ALERT($result.errors[0].message)
		return 
	End if 
	
	
	var $threshold:=0.7
	
	var $timer:=Milliseconds
	
	
	If (Form.indexedSearch)
		
		Form.Tickets:=ds.Tickets.query("IndexedVector>=:1 order by IndexedVector desc"; {vector: $vector; threshold: $threshold})
		
	Else 
		
		Form.Tickets:=ds.Tickets.query("Vector>=:1 order by Vector desc"; {vector: $vector; threshold: $threshold})
		
	End if 
	
	Form.timer:=(Milliseconds-$timer)/1000
	
End if 

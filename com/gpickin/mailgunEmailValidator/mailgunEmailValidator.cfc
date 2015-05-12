component {
	

	validateEmail( emailAdresss ) {
		// update the APIKey when you signup at mailgun.net
		var mailgunPubKey = "pubkey-493b392219ccc15973790ed3b40d8be1";
		
		//Don't change stuff below here
		var theURL = "https://api.mailgun.net/v2/address/validate";
		
		var httpService = new http(); 
	    /* set attributes using implicit setters */ 
	    httpService.setMethod("get"); 
	    httpService.setCharset("utf-8"); 
	    httpService.setUrl( theURL ); 
	    /* add httpparams using addParam() */ 
	    httpService.addParam(type="url",name="api_key",value=mailgunPubKey); 
	    httpService.addParam(type="url",name="address",value=emailAddress); 
	    /* make the http call to the URL using send() */ 
	    var result = DeserializeJSON(httpService.send().getPrefix().fileContent).is_valid; 

		return result;

	}

}
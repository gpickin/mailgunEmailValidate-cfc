<cfset validEmail = new mailgunEmailValidator().validateEmail( 'gavin@gavin.co.nz')>
<cfdump var="#validEmail#">
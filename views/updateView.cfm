

<!DOCTYPE html>
<html>
<head>
	 <link href="http://cdn.jsdelivr.net/foundation/5.0.2/css/foundation.css" rel="stylesheet" media="screen">
	 <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.7.1/modernizr.min.js"></script>
	 <link rel="stylesheet" type="text/css" href="main.css">

	<title>Edit Post</title>
</head>
<body>
	<p class="back"><a href="index.cfm?action=blog&method=read">Back</a></p>
	<cfform method="POST" action="index.cfm?action=blog&method=saveUpdate">
	    <div class="row">
	        <div class="small-4">
	            <div class="row">

				    <div class="large-12 columns">
				      	<label for="update"><h1>Update Post</h1></label>
				      	<textarea cols="40" rows="5" name="update" id="update"><cfoutput query='update'>#post#</cfoutput></textarea>
				      	
				      	<input type="hidden" name="hidId" id="hidId" value="#URL.id#">
				    </div>

				     <div class="small-3 columns">
		   				<cfinput type="submit" name="submit" class="button postfix" value="Submit">
					</div>
	            </div> <!--close row -->
	      </div>
	    </div>
	</cfform>

<script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/foundation/5.0.2/js/foundation.min.js"></script>
</body>
</html>
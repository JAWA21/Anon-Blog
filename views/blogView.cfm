<!DOCTYPE html>
<html>
<head>
	 <link href="http://cdn.jsdelivr.net/foundation/5.0.2/css/foundation.css" rel="stylesheet" media="screen">
	 <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.7.1/modernizr.min.js"></script>
	 <link rel="stylesheet" type="text/css" href="main.css">
	<title>aNOnn Blog</title>
</head>
<body>
<header>
	<div class="large-12 columns">
		<h1>aNOnn BLOG w/Cf</h1>
	</div>
</header>

    <div class="large-10 columns posts">
        <h2>Posts</h2>
        <ul class="entries">
            <cfoutput query="returnEntry">
                <li> #post# 
                <span><a href="?action=blog&method=update&id=#id#">Update</a></span>
                <span><a href="?action=blog&method=delete&id=#id#">Delete</a></span>
                <div class="last"><hr /></div>
                </li>
            </cfoutput>
        </ul>
    </div>

	<div class="large-12 columns posts">
		<cfform method="POST" action="index.cfm?action=blog&method=insert" class="posts">
		    <div class="small-5">
		        <div class="row">
				    <div class="large-12 columns">
				      	<label for="add"><h1>Add Post</h1></label>
				      	<textarea id="add" name="add" placeholder="Entry text here..."></textarea>
				    </div>

				    <div class="small-3 columns">
		   				<cfinput type="submit" name="submit" class="button postfix" value="Submit">
					</div>
		       
		  		</div>
			</div>
		</cfform>
	</div>
</body>
</html>
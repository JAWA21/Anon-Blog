<cfcomponent>

	<cffunction name="selectPosts">
    	<cfquery name="returnEntries" datasource="blog">
            SELECT *
            FROM blog
    	</cfquery>
        <cfreturn returnEntries>
    </cffunction>
    
    <cffunction name="insertPosts">
    	<cfset blogEntry=form.add>
    	<cfquery name="AddEntry" datasource="blog">
            INSERT into blog (post)
            VALUES ("#blogEntry#")
   		</cfquery>
    </cffunction>
    
    <cffunction name="deletePosts">
    	<cfargument name="curId">
    	<cfset curId=URL.id>
    	<cfquery name="delEntry" datasource="blog">
         	DELETE FROM blog WHERE id = #curId#
   		</cfquery>
     </cffunction>
    
    <cffunction name="readOne">
        <cfset curId=url.id>
    	<cfquery name="updateEntry" datasource="blog"> 
        	SELECT * 
            from blog 
            where id = #curId#
        </cfquery>
        <cfreturn updateEntry>
    </cffunction>
    
    <cffunction name="saveUpdateFn">
    	<cfargument name="curId">
        <cfargument name="text">
        <cfquery name="saveEntry" datasource="blog">
        	UPDATE blog 
		        SET post=#text#
				WHERE id=#curId#
        </cfquery>

    </cffunction>
    
    
    
</cfcomponent>
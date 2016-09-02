<!-- insert into database -->
<cfif URL.method eq 'insert' >
    <cfset blogEntry=URL.entry>
    <cfquery name="AddEntry" datasource="blog">
        INSERT into blog (post)
        VALUES ("#blogEntry#")
    </cfquery>
	<cfquery name="ReturnEntries" datasource="blog">
        SELECT *
        FROM blog
    </cfquery>

<cfelseif URL.method eq 'read'>
    <cfquery name="ReturnEntries" datasource="blog">
        SELECT *
        FROM blog
    </cfquery>

<cfelse>
    <cfquery name="ReturnEntries" datasource="blog">
        SELECT *
        FROM blog
    </cfquery>
</cfif>

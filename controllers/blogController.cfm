<cfset blog=CreateObject("component", "../models/blogModel")>

<cfif URL.method eq 'read'>
	<cfset returnEntry = blog.selectPosts()>
    <cfinclude template="../views/blogView.cfm">
<cfelseif URL.method eq 'insert' >
	<cfset insert = blog.insertPosts()>
    <cfset returnEntry = blog.selectPosts()>
    <cfinclude template="../views/blogView.cfm">
<cfelseif URL.method eq 'update' >
	<cfset update = blog.readOne()>
    <cfset returnEntry = blog.selectPosts()>
    <cfinclude template="../views/updateView.cfm">
<cfelseif URL.method eq 'saveUpdate' >
	<cfset curId = form.hidId>
	<cfset text = form.update>
	<cfset saveUpdated = blog.saveUpdateFn(curId,text)>
	<cfset returnEntry = blog.selectPosts()>
    <cfinclude template="../views/blogView.cfm">
<cfelseif URL.method eq 'delete' >
	<cfset del = blog.deletePosts()>
    <cfset returnEntry = blog.selectPosts()>
    <cfinclude template="../views/blogView.cfm">
<cfelse>
	<cfset returnEntry = blog.selectPosts()>
    <cfinclude template="../views/blogView.cfm">
</cfif>


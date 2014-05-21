<%-- Breadcrumbs are the path of parent pages which needs to be taken to reach the current  --%>
<% if $Pages %>
    <% loop $Pages %>
        <% if $Last %>
        	$Title.XML
        <% else %>
        	<a href="$Link">$MenuTitle.XML</a> &raquo;
        <% end_if %>
    <% end_loop %>
<% end_if %>

<%-- $LinkOrCurrent: Determines if the item is the current page. Returns "link" or "current" strings. --%>
<% if $LinkOrCurrent = current %>
    $Title
<% else %>
    <a href="$Link">$Title</a>
<% end_if %>
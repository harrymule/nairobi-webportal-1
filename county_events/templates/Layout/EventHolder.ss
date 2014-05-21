
<% include SideBar %>
<% require css("county_events/css/layout.css") %>
<div class = "content-container unit size3of4 lastUnit" style="">
<div  id="eventlist_container">
	 
		<h2> $Title </h2>
		 
	<% loop $GetEvents %>
	<hr>
		<event>
			<h3 class="imgdate">  <a href="$Link" title="Read more on &quot;{$Title}&quot;"> $Photo.SetWidth(60) $Date.Format("l jS F Y") </a></h3>
			<span class="setime"> Start Time: <a href = "$Link" > $StartTime</a></span> &nbsp; &nbsp;&nbsp;&nbsp;
			<span class="setime"> End Time: <a href = "$Link" > $EndTime</a></span>
			<h4> $Title </h4>
			<p> $Content.FirstParagraph </p>

			<a href = "$Link" title = "Read more on &quot;{$Title}&quot;"> Read more &gt; &gt;</a>

		</event>
	<% end_loop %>
	<br/>
	 

	</div>
	<div id="calendar_container">
		
		
		<div id="div_parent_container">
			<div id="div_navigation">
			</div>
			<div id="div_wdays">
			</div>
			<div id="div_mdays">
			<table id="tbl_mdays">
			</table>
			</div>
		</div>

		


		<% require javascript("county_events/javascript/jQuery.js") %>
		<% require javascript("county_events/javascript/myscript.js") %>

	 		 
		
	</div>
</div>

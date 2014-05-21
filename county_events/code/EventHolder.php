<?php
class EventHolder extends Page{
	private static $allowed_children = array("EventPage");
	private static $description  =  "A collection of the County's Events";

	/*private static $db = array(
		'Title'		=> 'Text'
	);

	public function getCMSFields(){
		$fields = parent::getCMSFields();
		$titleField   = new TextField('Title');
		$fields->addFieldToTab('Root.Main', $titleField, 'Content');
		return $fields;
	}*/
}

class EventHolder_Controller extends Page_Controller {
	function echoSomething(){
		$mystr = "A method in the controller ... EventPage_Controller ";
		return $mystr;
	}

	public function GetEvents() {
		$holder = EventHolder::get()->First();
		return ($holder) ? EventPage::get()->filter('ParentID', $holder->ID)->sort('Date DESC') : false; //Filter by ID of every event and ID of it's parent
	}

	/*
		public function GetEvents($num=5) {
			$holder = EventHolder::get()->First();
			return ($holder) ? 
				EventPage::get()->filter('ParentID', $holder->ID)->sort('Date DESC')->limit($num) : 
					false;
					//Filter by ID of every event and ID of it's parent 
		}

	*/

	public function getAllEvents(){
		$holder = EventHolder::get()->First();
		return ($holder)? EventPage::get()->filter('ParentID', $holder->ID)->sort('Date DESC') : false;
	}

	public function init(){
		$dir = basename(dirname(__FILE__));
		if($dir == "kab_code") {
	 		Requirements::css("county_events/css/calendar_layout.css");
	 		//Requirements::block("themes/simple/css/typography.css"); //why is this not blocking just the file in this dir only??
		}

		//Requirements::javascriptTemplate("county_events/javascript/myscript.js", $Date);
		/*Requirements::customScript(<<<JS
  			alert("hi there"); 
		JS
		);*/

		parent::init();  
	}//end function init

	function customScript(){
		$allevents = $this->getAllEvents();
		//for($i=0; $<) 
		$elem = $allevents[0];
		return $elem;
	} 

	/**
	  * Pagination function
	  *
	  */
	public function PaginatedPages() {
		$paginatedItems = new PaginatedList($this->Children(), $this->request);
		$paginatedItems->setPageLength(4);
    		return $paginatedItems;
	}

}
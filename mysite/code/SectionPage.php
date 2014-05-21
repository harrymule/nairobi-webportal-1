<?php

class SectionPage extends Page {

    private static $db = array(
		"Description" => "Text"
	);

 	private static $has_one = array(
		"backgroundImage" => "Image"
	);

	// Some defaults
    // private static $icon = "themes/fitiimage/images/icons/games.png";
    private static $default_parent = 'SectionHolder';
	private static $description = "Holds a sector to acquire more information from.";
	private static $singular_name = 'Section Page';
	private static $plural_name = 'Section Pages';

	/**
	 * Set the default background.
	 */
	public function populateDefaults() {
		parent::populateDefaults();
		// $ThemeDir =  $this->ThemeDir();
		// $this->setField('backgroundImage', $Themedir."/images/ncc-section-bg.jpg");
	}

	public function getCMSFields() {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main', new TextField('Description'), 'Content');

        //Add background image for each blog entry
		$fields->addFieldToTab("Root.Background Image", new UploadField('backgroundImage', 'Add Background Image'));
		// $fields->removeFieldFromTab("Root.Main", "Content");

        // $this->extend('updateCMSFields', $fields);
        return $fields;
    }
}

class SectionPage_Controller extends Page_Controller {

}
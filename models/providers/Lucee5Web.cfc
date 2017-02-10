/**
* I represent the behavior of reading and writing CF engine config in the format compatible with a Lucee 5.x web context
* I extend the BaseConfig class, which represents the data itself.
*/
component accessors=true extends='cfconfig-services.models.BaseLucee' {
	
	/**
	* Constructor
	*/
	function init() {
		// Call super first, then override
		super.init();
		
		// Used when writing out a Lucee server context config file from the generic config
		setConfigFileTemplate( expandPath( '/resources/lucee5/lucee-web-base.xml' ) );
		
		// This is the file name used by this config file
		setConfigFileName( 'lucee-web.xml.cfm' );
		// This is where said config file is stored inside the server home
		setConfigRelativePathWithinServerHome( '/' );

		setEngine( 'luceeWeb' );
		setVersion( '5' );
		
		return this;	
	}
	
}
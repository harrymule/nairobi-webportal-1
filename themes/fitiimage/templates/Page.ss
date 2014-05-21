<!--
/**
 * Created by Eugene Mutai
 * Email: eugenemutai@gmail.com
 * Site: http://www.knightslab.com
 * Date: 06/04/14 (Updated on 07/04/14)
 * Time: 12:19 PM
 * Description: Nairobi County Website and portal.
 *
 * User Experience(UX) and "how beautiful the site looks!" done by:
 *    ____ __ __   __ ____                         ____ __            __ __          
 *   / __//_// /_ /_//  _/__ _  ___ _ ___ _ ___   / __// /_ __ __ ___/ //_/___   ___
 *  / _/ / // __// /_/ / /  ' \/ _ `// _ `// -_) _\ \ / __// // // _  // // _ \ (_-<
 * /_/  /_/ \__//_//___//_/_/_/\_,_/ \_, / \__/ /___/ \__/ \_,_/ \_,_//_/ \___//___/
 *                                  /___/                                         
 * http://www.fitiimagestudios.com
 *
-->
<!DOCTYPE html>
<html lang="$ContentLocale">

<head>
    <title>$SiteConfig.Title | $Title</title>

    <!-- Site Necessities -->
    <% base_tag %>
    $MetaTags(false)
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=yes">
    <%-- <meta http-equiv="Content-Type" content="text/html; charset=utf-8"> --%>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta http-equiv="cleartype" content="on">

    <link rel="shortcut icon" href="{$ThemeDir}/images/html5logos/original.png" />

    <% require themedCSS('bootstrap') %>
    <%-- <link rel="stylesheet" href="frameworks/bootstrap/dist/css/bootstrap.css"> --%>
	
    <!-- Use Font Awesome Icons-->
    <% require themedCSS('font-awesome.min') %>
    <%-- <link rel="stylesheet" href="app/css/font-awesome.min.css"> --%>
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries-->
    <!-- if lt IE 9
    script(src="assets/js/html5shiv.js")
    script(src="assets/js/respond.min.js")
    -->
    <!-- Your stylesheets -->
    <% require themedCSS('application') %>
    <%-- <link rel="stylesheet" href="app/css/application.css"> --%>
</head>
<body class="$ClassName">
    <%-- <% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %> --%>

	<!--Site page header, only available on the homepage-->
	<% if $ClassName = HomePage || $ClassName = BlogEntry || $ClassName = SectionPage %>
		<% include PageHeader %>
	<% end_if %>

	<!-- Breadcrumbs/Helper navigation bar-->
	<% if $ClassName != BlogEntry || $ClassName != SectionPage %>
		<% include BreadcrumbsNavbar %>
	<% end_if %>

	<!-- Content of the site goes in here-->
	<div data-part="page-content" class="page-content pale-grey-bg">
		<div id="page-content" class="container-fluid content">
			$Layout
		</div>
    </div>

    <% include FooterFixedNavbar %>

    <!-- App's dependencies(libraries) and business logics-->
    <application-engine description="All the application's JS files fall here">
        <!-- jQuery library-->
        <script type="text/javascript" src="{$ThemeDir}/js/jquery.min.js"></script>
        <!-- For cookies and touch support -->
        <script type="text/javascript" src="{$ThemeDir}/js/jquery.cookie.js"></script>
        <script type="text/javascript" src="{$ThemeDir}/js/jquery.hammer.min.js"></script>
        <%-- A javascript date library for parsing, validating, manipulating, and formatting dates. --%>
        <script type="text/javascript" src="{$ThemeDir}/js/moment.min.js"></script>
        <!-- For CAUSEROL-->
        <script type="text/javascript" src="{$ThemeDir}/js/jquery.carouFredSel-6.2.1-packed.js"></script>
        <!-- Keep sizes of font style in the document -->
        <!-- consistent with the size of the page-->
        <script type="text/javascript" src="{$ThemeDir}/js/flowtype.js"></script>

        <%-- AddThis plugin --%>
        <%-- <script type="text/javascript">var addthis_config = {"data_track_addressbar":true};</script>
        <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-4f4ac4c2544a9339"></script> --%>

        <!-- Your app functions script -->
        <script type="text/javascript" src="{$ThemeDir}/js/application.js"></script>
        <script type="text/javascript" src="{$ThemeDir}/js/execute.js"></script>
    </application-engine>

</body>
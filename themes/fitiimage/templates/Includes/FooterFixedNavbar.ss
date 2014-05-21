<div role="nav-menu" data-part="fixed-footer-nav-menu" id="navigation-bar" class="row">
        <!--The menu icon-->
        <div class="col-md-1 hidden-xs hidden-sm text-align-center">
            <a href="$BaseHref" class="white">
                <i class="fa fa-home fa-2x"></i>
                <p class="no-margin no-padding">Home</p>
            </a>
        </div>
        <!-- Time and weather-->
        <div class="col-md-2 hidden-xs hidden-sm text-center yellow-bg">
            <h2 class="moment-in-time grey">The time is?</h2>
        </div>
        <!-- The navigation menu-->
        <div class="col-sm-6 col-md-5 hidden-xs">
            <div class="row">
                <!-- Previous scroller-->
                <div class="col-xs-1">
                    <p class="arrow">
                        <i id="nav-menu-prev" class="fa fa-arrow-left fa-3x pull-left grey-arrow"></i>
                    </p>
                </div>
                <!-- The nav menu-->
                <div class="col-xs-10">
                    <div id="nav-menu" class="nav-menu text-align-center">
                    <% with $Level(1) %>
                        <% loop $Children %>
                        <%-- <% if $ClassName = HomePageMenu %> --%>
                        <div class="nav-icon">
                            <a href="$Link">
                                <i class="fa {$IconType} fa-2x"></i>
                                <p>$MenuTitle.XML</p>
                            </a>
                        </div>
                        <%-- <% end_if %> --%>
                        <% end_loop %>
                    <% end_with %>
                    </div>
                </div>
                <!-- Next Scroller-->
                <div class="col-xs-1">
                    <p class="arrow">
                        <i id="nav-menu-next" class="fa fa-arrow-right fa-3x pull-right grey-arrow"></i>
                    </p>
                </div>
            </div>
        </div>
        <!-- Emergency Services and social-icons-->
        <div class="col-sm-6 col-md-4">
            <div class="row">
                <div class="col-xs-6 col-sm-7">
                    <div id="social-icons">
                        <div class="row text-center">
                            <div class="col-xs-4"><i class="fa fa-facebook-square fa-2x"></i>
                            </div>
                            <div class="col-xs-4"><i class="fa fa-twitter fa-2x"></i>
                            </div>
                            <div class="col-xs-4"><i class="fa fa-google-plus-square fa-2x"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-5  no-padding no-margin">
                    <div class="nav-alert text-align-center clearfix">
                        <p class="uppercase text-justify">
                            <i class="fa fa-bell fa-2x fa-borer pull-left"></i>
                            <span class="clearfix">Emergency Services</span>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
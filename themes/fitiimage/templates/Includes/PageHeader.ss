<div role="header" data-part="site-header" id="page-header" class="row">
    <div class="col-xs-12">
        <div class="container">
            <div class="row space header-bg">
                <div class="col-xs-3 col-xs-offset-0 col-sm-3 col-sm-offset-0 col-md-3 col-md-offset-0 col-lg-2 ncc-logo">
                    <img src="{$ThemeDir}/images/ncclogo.png" alt="NCC logo" class="img-responsive white-bg">
                </div>
                <% if $ClassName = BlogEntry || $ClassName = SectionPage %>
                <style type="text/css">
                    .row[role="header"] {
                    <% if $backgroundImage %>
                        background: url("$backgroundImage.getAbsoluteURL()");
                    <% else %>
                        background: url("{$ThemeDir}/images/ten.jpg");
                    <% end_if %>
                        background-position: center 30%;
                    }
                </style>
                <div class="col-xs-9 col-md-9 col-lg-10">
                    <div class="row text-center blog-header">
                        <h1 class="white"><strong>$MenuTitle</strong></h1>
                        <% if $ClassName = BlogEntry %>
                        <h3 class="no-padding no-margin green">
                            <% _t('BlogEntry_ss.POSTEDBY', 'Posted by') %> $Author.XML <% _t('BlogEntry_ss.POSTEDON', 'on') %> $Date.Long
                        </h3>
                        <% else_if $ClassName = SectionPage %>
                        <h3 class="green">{$Description}</h3>
                        <% end_if %>
                    </div>
                </div>
                <% else %>
                <div class="header-menu col-sm-9 col-md-9 col-lg-10 hidden-xs hidden-sm">
                    <div class="row text-align-center">
                        <div class="col-xs-12 col-sm-6">
                            <b>
                                <h2 class="no-padding blue">
                                    <strong>NAIROBI CITY COUNTY </br></strong>
                                    <small class="no-padding no-margin green">the green city under the sun</small>
                                </h2>
                            </b>
                        </div>
                        <div class="col-xs-6 col-sm-3 grey-bg">
                            <h3 class="icon1">Login &nbsp;<i class="fa fa-arrow-right fa-1x"></i></h3>
                        </div>
                        <div class="col-xs-6 col-sm-3 yellow-bg">
                            <h3 class="icon2">See Nairobi &nbsp;<i class="fa fa-th fa-1x"></i></h3>
                        </div>
                    </div>
                </div>
                <% end_if %>
            </div>
        </div>
    </div>
</div>
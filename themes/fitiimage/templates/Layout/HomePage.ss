<div class="row">
    <div class="col-xs-12">
        <div class="row space">
            <%-- WHAT THE FUCK IS NCC?? --%>
            <div class="col-xs-12 col-sm-6 col-md-8">
                <div class="row action-box no-padding no-margin bg-warnin">
                    <div class="hidden-xs col-sm-2 col-lg-offset-1 col-lg-1 space">
                        <img src="{$ThemeDir}/images/ncclogo-blue.png" max-width="60px" class="img-responsive">
                    </div>
                    <div class="col-xs-12 col-sm-10 col-lg-10 padding-top">
                        <a href="#" class="uppercase abtncc text-left">
                            <h4>About Nairobi City County</h4>
                        </a>
                    </div>
                </div>
            </div>

            <!-- SEARCH BAR -->
            <div class="col-xs-12 col-sm-6 col-md-4">
                $SearchForm
                <%-- <form role="form" class="searchbox">
                    <div class="form-group">
                        <label for="searchTerms" class="sr-only col-xs-12"></label>
                        <div class="col-xs-12">
                            <div class="input-group input-group-l">
                                <span class="input-group-addon">&nbsp;<i class="fa fa-search"></i>
                                </span>
                                <input type="text" id="searchTerms" placeholder="Search something here..." class="inputlg form-control">
                            </div>
                        </div>
                    </div>
                </form> --%>
            </div>
        </div>
    </div>
</div>
<hr class="space hidden-lg hidden-md">
<div class="row margin-btm">
    <div class="col-xs-12">
        <div class="row">
            <!-- App menu -->
            <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 text-align-center">
                <div class="row main-menu">
                    <% if $Children %>
                        <% loop $Children %>
                        <% if $ClassName = SectionHolder %>
                        <div class="col-xs-12 col-sm-6 col-md-6 $ClassName">
                            <a href="$Link">
                                <div class="panel panel-default">
                                    <div class="panel-body">
                                        <h4>
                                            <i class="fa {$IconType} fa-4x grey" $IconColor></i>
                                            $MenuTitle.XML
                                        </h4>
                                        <div class="sr-only">
                                            <p>$Description</p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <% end_if %>
                        <% end_loop %>
                    <% end_if %>
                </div>
            </div>
            <!-- Blog posts -->
            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 blog-section">
                <h3 class="no-padding no-margin">News, Events and Updates
                    <br/>
                    <small class="muted">The little things that matter.</small>
                </h3>
                <hr class="margin">
                <% if LatestUpdates %>
                <div class="row blog-row">
                    <% loop $LatestUpdates %>
                        <% include BlogPreviewSection %>
                    <% end_loop %>
                </div>    
                <% else %>
                <div class="jumbotron">
                    <p class="muted"> Nothing <span class="label label-success label-sm">interesting</span> to make you happy. But we are cooking up something for you.</p>
                </div>
                <% end_if %>
            </div>
        </div>
    </div>
</div>

<!-- Page Mini Menu -->
<div class="row">
    <div class="col-xs-12 col-lg-8 text-align-center">
        <div id="mini-menu" class="row miscellinious $ClassName">
            <% if $Children %>
                <% loop $Children %>
                <% if $ClassName = MiniSection %>
                <a href="$Link">
                    <div class="col-xs-6 col-sm-3 col-md-3">
                        <div class="panel panel-default {$bgColor}-bg">
                            <div class="panel-body">
                                <h4><i class="fa {$IconType} fa-2x white"></i>$MenuTitle</h4>
                            </div>
                        </div>
                    </div>
                </a>
                <% end_if %>
                <% end_loop %>
            <% end_if %>
        </div>
    </div>
</div>
                            <div class="grid">
                                <div class="entry-media">
                                    <a href="{$_modx->makeUrl($id)}"><img src="{$_pls['image'] | phpthumbon : "w=720&h=420&zc=1"}" alt="{$pagetitle}"></a>
                                </div>
                                <div class="entry-details">
                                    <div class="entry-header">
                                        <h3><a href="{$_modx->makeUrl($id)}">{$pagetitle}</a></h3>
                                        <div class="entry-meta">
                                            <ul>
                                                <li><a href="#"><i class="fa fa-clock-o"></i> {$_pls['year']}</a></li>
                                                <li><a href="#"><i class="fa fa-comments-o"></i> {$_pls['site-tip']}</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="entry-body">
                                        {$introtext}
                                    </div>
                                </div>
                            </div>
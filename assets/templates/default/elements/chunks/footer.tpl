	<footer>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="row">
						    <div class="col-lg-12 col-md-12 col-sm-12 col-12">
						        <h4>{$_modx->lexicon('sonelang_frontend_navigation')}</h4>
						    </div>
							<div class="col-lg-2 col-md-2 col-sm-4 col-6">
							    {'pdoMenu' | snippet : [
                    			    'parents' => 5,
                    			    'level' => 1,
                                    'displayStart' => 1,
                                    'firstClass' => '',
                                    'context' => 'web',
                                    'tplStart' => '@INLINE <li class="first"><a href="{$link}" {$attributes}>{$menutitle}</a></li>{$wrapper}'
                    			]}
							</div>
							<div class="col-lg-2 col-md-2 col-sm-4 col-6">
							    {'pdoMenu' | snippet : [
                    			    'parents' => 23,
                    			    'includeTVs' => 'icon',
                    			    'level' => 1,
                                    'displayStart' => 1,
                                    'firstClass' => '',
                                    'context' => 'web',
                                    'tplStart' => '@INLINE <li class="first"><a href="{$link}" {$attributes}>{$menutitle}</a></li>{$wrapper}',
                                    'tpl' => '@INLINE <li><a href="{$link}" {$attributes}>{$icon} {$menutitle}</a></li>{$wrapper}'
                    			]}
							</div>
							<div class="col-lg-3 col-md-3 col-sm-4 col-6">
							    {'pdoMenu' | snippet : [
                    			    'parents' => 29,
                    			    'includeTVs' => 'icon',
                    			    'level' => 1,
                                    'displayStart' => 1,
                                    'firstClass' => '',
                                    'context' => 'web',
                                    'tplStart' => '@INLINE <li class="first"><a href="{$link}" {$attributes}>{$menutitle}</a></li>{$wrapper}',
                                    'tpl' => '@INLINE <li><a href="{$link}" {$attributes}>{$icon} {$menutitle}</a></li>{$wrapper}'
                    			]}
							</div>
							<div class="col-lg-2 col-md-2 col-sm-4 col-6">
							    {'pdoMenu' | snippet : [
                    			    'parents' => 36,
                    			    'includeTVs' => 'icon',
                    			    'level' => 1,
                                    'displayStart' => 1,
                                    'firstClass' => '',
                                    'context' => 'web',
                                    'tplStart' => '@INLINE <li class="first"><a href="{$link}" {$attributes}>{$menutitle}</a></li>{$wrapper}',
                                    'tpl' => '@INLINE <li><a href="{$link}" {$attributes}>{$icon} {$menutitle}</a></li>{$wrapper}'
                    			]}
							</div>
							<div class="col-lg-2 col-md-2 col-sm-4 col-6">
							    {'pdoMenu' | snippet : [
                    			    'parents' => 0,
                    			    'resources' => '2,3,4,6,7,18,8',
                    			    'level' => 1,
                                    'displayStart' => 1,
                                    'context' => 'web',
                                    'tplStart' => '@INLINE <li class="first"><a href="{$link}" {$attributes}>{$menutitle}</a></li>{$wrapper}'
                    			]}
							</div>
						</div>
						{'pdoMenu' | snippet : [
                    		'parents' => 0,
                    		'resources' => '19',
                    		'includeTVs' => 'icon',
                    		'level' => 1,
                            'displayStart' => 1,
                            'context' => 'web',
                            'tplOuter' => '@INLINE <ul class="last">{$wrapper}</ul>',
                            'tplStart' => '@INLINE <li class="first"><a href="{$link}" {$attributes}>{$menutitle}</a></li>{$wrapper}',
                            'tpl' => '@INLINE <li><a href="{$link}" {$attributes}>{$icon} {$menutitle}</a></li>{$wrapper}'
                    	]}
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="line"></div>
						<div class="row">
							<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
								<p>
								    © {'Copyright' | snippet : ['start' => 2015]} <a href="/">SEQUEL.ONE</a>
									{'pdoMenu' | snippet : [
										'parents' => 9,
										'resources' => '43,44',
										'includeTVs' => 'icon',
										'showHidden' => 1,
										'level' => 1,
										'context' => 'web',
										'tplOuter' => '@INLINE <ul>{$wrapper}</ul>',
										'tpl' => '@INLINE <li><a href="{$link}" {$attributes}>{$menutitle}</a></li>{$wrapper}'
									]}
								</p>
							</div>
							<div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
							    <div class="skype-footer">
        					        <p><img src="/assets/templates/default/img/skype.png" alt="" /> <span>sequel.one</span></p>
        					    </div>
							</div>
							<div class="col-lg-5 col-md-5 col-sm-12">
                                <div class="paymethod">
                                    <ul>
                                        <li><a rel="nofollow" href="https://www.webmoney.ru" title="Мы принимаем WebMoney"><img src="/assets/templates/default/img/paymethod/webmoney.png" alt="WebMoney" /></a></li>
                                        <li><a rel="nofollow" href="https://money.yandex.ru"><img src="/assets/templates/default/img/paymethod/yandex.png" alt="" /></a></li>
                                        <li><a rel="nofollow" href=""><img src="/assets/templates/default/img/paymethod/card.png" alt="" /></a></li>
                                        <li><a rel="nofollow" href="https://paypal.com"><img src="/assets/templates/default/img/paymethod/paypal.png" alt="" /></a></li>
                                    </ul>
                                </div>
							</div>
							<div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
								<div class="counter">
									<!-- webmoney passport label#F11AABF9-D8FF-4AC7-9CEE-7D2618CDE67A begin -->
                                    <a rel="nofollow" href="//passport.webmoney.ru/asp/certview.asp?wmid=193333904641">
										<img src="/assets/templates/default/img/paymethod/wmcounter.png" alt="Webmoney" />
                                    </a> 
                                    <!-- webmoney passport label#F11AABF9-D8FF-4AC7-9CEE-7D2618CDE67A end -->
								</div>
							</div>
						</div>
				</div>
			</div>
		</div>
	</footer>
	<div class="scrolltop"></div>
	<div class="m-overlay"></div>
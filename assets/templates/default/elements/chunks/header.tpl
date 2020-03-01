    {$_modx->lexicon->load(('cultureKey' | option) ~ ':minishop2:default')}
	<header class="m-header">
		<div class="m-header-wrapper">
			<div class="m-toggle-sidebar m-material-button">
				<i class="material-icons m-open-icon">&#xE5D2;</i>
				<i class="material-icons m-close-icon">close</i>
			</div>
			<div class="m-logo-box">
				<a href="/" class="m-logo">
					<img class="m-logo-mobile" src="/assets/templates/default/img/icon-bulb.png" alt="SEQUEL.ONE - Профессиональный аудит сайтов" height="34">
					<img class="m-logo-desktop" src="/assets/templates/default/img/logo_white.png" alt="SEQUEL.ONE - Разработка и продвижение сайтов" height="35">
				</a>
			</div>
			<div class="m-header-menu">
			    {if $_modx->user.id > 0}
                    <ul class="m-header-navigation">
                        <li><a href="https://host.sequel.one" class="m-material-button m-submenu-toggle btn-danger">{'sonelang_frontend_mypanel' | lexicon}</a></li>
                    </ul>
                {/if}
			</div>
			<div class="m-header-right m-with-seperator">
				<ul class="m-header-navigation">
					<li>
					    {'mlLanguagesLinks' | snippet : [
						    'showActive' => 1,
						    'wrapperTpl' => '@CODE 
        						<a href="#" class="m-material-button m-submenu-toggle"><span><img src="/assets/templates/default/img/lang/[[++cultureKey]].png" alt="[[++cultureKey]]" height="16"></span></a>
        						<div class="m-header-submenu">
        						    <ul class="ml-list">
                                        [[+output]]
                                    </ul>
        						</div>
						    ',
						    'tpl' => '@CODE
						        <li>
                                    <a href="[[+link]]"><img src="/assets/templates/default/img/lang/[[+culture_key]].png" alt="[[+culture_key]]" /> [[+culture_key]]</a>
                                </li>
						    ',
					    ]}
					</li>
					<li>
						<a href="#" class="m-material-button m-search-toggle"><i class="material-icons">&#xE8B6;</i></a>
					</li>
					<li>
					    {'!officeAuth' | snippet : [
                            'groups' => 'Users',
                            'HybridAuth' => 1,
                            'providers' => 'Yandex,GitHub,Vkontakte,Facebook',
                            'loginContext' => 'my',
                            'addContexts' => 'web,store,host,docs,my',
                            'tplLogin' => '@FILE components/office/login.tpl',
                            'tplLogout' => '@FILE components/office/logout.tpl'
                        ]}
					</li>
					<!--li class="m-hide-on-mobile">
						<a href="#" class="m-material-button"><i class="material-icons">&#xE42A;</i></a>
						<div class="m-header-submenu m-extra-menu">
							<a href="#">
								<i class="material-icons">&#xE030;</i>
								<span>Musics</span>
							</a>
							<a href="#">
								<i class="material-icons">&#xE04A;</i>
								<span>Videos</span>
							</a>
							<a href="#">
								<i class="material-icons">&#xE158;</i>
								<span>Emails</span>
							</a>
							<a href="#">
								<i class="material-icons">&#xE160;</i>
								<span>Reports</span>
							</a>
							<a href="#">
								<i class="material-icons">&#xE24E;</i>
								<span>Persons</span>
							</a>
							<a href="#">
								<i class="material-icons">&#xE251;</i>
								<span>Pictures</span>
							</a>
						</div>
					</li-->
					{'!msMCDMiniCart' | snippet: [
					    'tplOuter' => '@FILE components/msmcd/outer.tpl',
					    'tpl' => '@FILE components/msmcd/row.tpl',
                        'img' => '50x50',
                    ]}
				</ul>
			</div>
			<div class="m-search-bar">
    			{'!mSearchForm' | snippet : [
                    'element' => 'pdoResources',
                    'tplForm' => '@FILE components/msearch2/form.tpl'
                ]}
			</div>
		</div>
	</header>
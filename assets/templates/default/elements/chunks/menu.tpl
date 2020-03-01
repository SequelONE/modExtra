	<div class="m-sidebar">
		<div class="m-sidebar-wrapper">
			<div class="m-sidebar-logo">
				<a href="#"><img src="/assets/templates/default/img/logo.png" alt="SEQUEL.ONE - Продвижение и разработка сайта" height="35"></a>
				<div class="m-sidebar-pin-button" title="Pin/Unpin Menu">
					<i class="material-icons m-fixed-icon">gps_fixed</i>
					<i class="material-icons m-not-fixed-icon">gps_not_fixed</i>
				</div>
				<div class="m-sidebar-toggle-button">
					<i class="material-icons">&#xE317;</i>
				</div>
			</div>
			<nav class="m-sidebar-navi">
    			{'!pdoMenu' | snippet : [
                    'parents' => 0,
                    'startId' => 0,
    			    'level' => 3,
    			    'includeTVs' => 'icon',
    			    'tplOuter' => '@FILE menu/top/outer.tpl',
    			    'tpl' => '@FILE menu/top/row.tpl',
    			    'tplParentRow' => '@FILE menu/top/parent.tpl',
    			    'tplInnerRow' => '@FILE menu/top/inner-row.tpl',
    			    'context' => $_modx->context.key
                ]}
			</nav>
		</div>
	</div>
						<a href="#" class="m-material-button m-submenu-toggle"><span class="m-user-avatar"><img src="{if $photo?}{$photo}{else}{$gravatar}?s=30{/if}" alt="{$fullname}" title="{$fullname}" width="28"/></span></a>
						<div class="m-header-submenu">
							<ul>
								<li><a href="{$_modx->makeUrl('120')}"><i class="far fa-user"></i> {$_modx->lexicon('sonelang_frontend_profile')}</a></li>
								<li><a href="{$_modx->makeUrl('121')}"><i class="fas fa-shopping-cart"></i> {$_modx->lexicon('sonelang_frontend_orders')}</a></li>
								<li><a href="{$_modx->makeUrl('122')}"><i class="far fa-heart"></i> {$_modx->lexicon('sonelang_frontend_favorites')}</a></li>
								<li><a href="{$_modx->resource.id | url : [] : ['action' => 'auth/logout']}"><i class="fas fa-sign-out-alt"></i> {$_modx->lexicon('sonelang_frontend_logout')}</a></li>
							</ul>
						</div>
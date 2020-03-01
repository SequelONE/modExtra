<li id="msmcd-dropdown">	
    <a href="#" class="m-material-button m-submenu-toggle" id="dropdownMiniCart" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-shopping-basket material-icons"></i> <sup><span class="ms2_total_count">{$total_count}</span></sup></a>
	<div class="m-header-submenu m-notify-list">
		<div class="m-notify-header">
			<span class="m-notify-text-top">{'area_ms2_cart' | lexicon}</span>
			<span class="m-notify-text">{'ms2_minicart' | lexicon} <strong class="ms2_total_count">{$total.count}</strong></span>
		</div>
		<div class="m-notify-tab">
			<ul class="nav">
				<li><a href="#1a" data-toggle="tab" class="active">{'sonelang_frontend_services' | lexicon}</a></li>
			</ul>
			<div class="tab-content clearfix">
				<div class="tab-pane active" id="1a">
                    <div id="mcd-mini-cart" class="dropdown-menu w-100" aria-labelledby="dropdownMiniCart">
                        {$output}
                    </div>
                    <div class="empty">
                    	<h5><i class="glyphicon glyphicon-shopping-cart"></i> {'ms2_frontend_order_submit' | lexicon}</h5>
                    	{'ms2_minicart_is_empty' | lexicon}
                    </div>
                    
                    {'!msProducts' | snippet: [
                        'tpl' => 'msMCDProductsRowTpl',
                    ]}
                    
                    <div class="not_empty">
                    	<div class="row">
    						<div class="col-lg-6">
    							{'ms2_frontend_order_cost' | lexicon}:<br> <strong class="ms2_total_cost">{$total.cost}</strong> {'ms2_frontend_currency' | lexicon}
    						</div>
    						<div class="col-lg-6">
    							<a class="btn btn-danger btn-sm" href="{$_modx->makeUrl('12')}">{'ms2_frontend_order_submit' | lexicon}</a>
    						</div>
    					</div>
                    </div>
				</div>
			</div>
		</div>
	</div>
</li>
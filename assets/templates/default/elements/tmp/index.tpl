<!DOCTYPE html>
<html lang="{$_modx->config.cultureKey}">
{$_modx->getChunk('@FILE head.tpl')}
<body>
{$_modx->getChunk('@FILE header.tpl')}
{$_modx->getChunk('@FILE menu.tpl')}
{$_modx->getChunk('@FILE slider.tpl')}
    <section id="services-menu">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="navbar services-menu">
                        <div class="container">
                            <div class="navbar-header">
                                <button class="navbar-toggler fas fa-bars" type="button" data-toggle="collapse" data-target="#services" aria-expanded="false" aria-controls="services">
                                     <span class="navbar-toggler-icon"></span>
                                </button>
                            </div>
                            <div class="collapse navbar-collapse" id="services">
                                {'pdoMenu' | snippet : [
                    			    'parents' => 5,
                    			    'resources' => '20,21,22,41,23,29,36',
                    			    'level' => 1,
                                    'displayStart' => 1,
                                    'tplOuter' => '@FILE components/pdotools/pdomenu/services/outer.tpl',
                                    'tplStart' => '@FILE components/pdotools/pdomenu/services/start.tpl',
                                    'tpl' => '@FILE components/pdotools/pdomenu/services/row.tpl',
                                    'hereClass' => 'active',
                    			]}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="pricing-section section-padding" id="services-tabs">
        <div class="container">
            <div class="row">
                <div class="services-tabs">
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active show fade in" id="hosting">
                            <h5>Хостинг</h5>
                            <div class="pricing-7 section-gray">
                                <div class="row">
                                    <div class="col-lg-4 col-md-4">
                                        <div class="block block-pricing block-raised">
                                            <div class="table">
                                                <p><strong class="category color1">ONE</strong></p>
                                                <p class="price color1">
                                                    <img src="assets/templates/default/img/hosting/one.png" alt="Тариф ONE" /><br />
                                                    <span class="block-caption">1.18 <small>€/мес.</small></span>
                                                </p>
                                                <ul>
                                                    <li><b>64 Mb</b> Ram</li>
                                                    <li><b>24/7</b> Тех. поддержка</li>
                                                    <li><b>1 GB</b> SSD</li>
                                                    <li><b>1</b> Домен</li>
                                                    <li><b>1</b> База данных</li>
                                                    <li>Резервные копии</li>
                                                </ul> <a href="#" class="btn btn-warning btn-round">Подробнее</a> </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4">
                                        <div class="block block-pricing block-raised">
                                            <div class="table">
                                                <p><strong class="category color2">PRO</strong></p>
                                                <p class="price color2">
                                                    <img src="assets/templates/default/img/hosting/pro.png" alt="Тариф PRO" /><br />
                                                    <span class="block-caption">5.94 <small>€/мес.</small></span>
                                                </p>
                                                <ul>
                                                    <li><b>512 Mb</b> Ram</li>
                                                    <li><b>24/7</b> Тех. поддержка</li>
                                                    <li><b>10 GB</b> SSD</li>
                                                    <li><b>10</b> Доменов</li>
                                                    <li><b>10</b> База данных</li>
                                                    <li>Резервные копии</li>
                                                </ul> <a href="#" class="btn btn-warning btn-round">Подробнее</a> </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4">
                                        <div class="block block-pricing block-raised">
                                            <div class="table">
                                                <p><strong class="category color3">VIP</strong></p>
                                                <p class="price color3">
                                                    <img src="assets/templates/default/img/hosting/vip.png" alt="Тариф VIP" /><br />
                                                    <span class="block-caption">13.08 <small>€/мес.</small></span>
                                                </p>
                                                <ul>
                                                    <li><b>1 Gb</b> Ram</li>
                                                    <li><b>24/7</b> Тех. поддержка</li>
                                                    <li><b>100 GB</b> SSD</li>
                                                    <li><b>100</b> Доменов</li>
                                                    <li><b>100</b> База данных</li>
                                                    <li>Резервные копии</li>
                                                </ul> <a href="#" class="btn btn-warning btn-round">Подробнее</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade domain-section" id="domains">
                            <h5>Домены</h5>
                            <div class="container">
                                <div class="row">
                                    <div class="col col-xs-12">
                                        <div class="section-title-s2">
                                            <h2>Register Domain &amp; <span>Get 10% Off</span> Today</h2>
                                            <p>Let’s find your domain</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                                        <div class="domain-search">
                                            <form>
                                                <input type="text" class="form-control">
                                                <button type="submit">Search</button>
                                            </form>
                                        </div>
                                        <div class="domain-info">
                                            <div>
                                                <img src="assets/templates/default/img/domain/com.jpg" alt="">
                                                <p>$3.99/year</p>
                                            </div>
                                            <div>
                                                <img src="assets/templates/default/img/domain/net.jpg" alt="">
                                                <p>$3.99/year</p>
                                            </div>
                                            <div>
                                                <img src="assets/templates/default/img/domain/org.jpg" alt="">
                                                <p>$3.99/year</p>
                                            </div>
                                            <div>
                                                <img src="assets/templates/default/img/domain/au.jpg" alt="">
                                                <p>$3.99/year</p>
                                            </div>
                                            <div>
                                                <img src="assets/templates/default/img/domain/eu.jpg" alt="">
                                                <p>$3.99/year</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="ssl">
                            <h5>SSL сертификаты</h5>
                    		<div class="ssl">
                    			<div id="ssl-table">
                    				<div id="ssl-table-header">
                    					<div id="ssl-table-controls">
                    						<form>
                    							<div class="row">
                    								<div class="col-lg-3 col-md-3 col-sm-12">
                    									<h4>Уровень проверки</h4>
                    								</div>
                    								<div class="col-lg-9 col-md-9 col-sm-12">
                    									<ul id="ssl-type-selector">
                    										<li class="active">
                    											<input type="radio" name="ssl_type_list" id="radio1" checked="" value="all"><span>Все типы сертификатов</span>
                    										</li>
                    										<li class="">
                    											<div class="d">
                    												<input type="radio" name="ssl_type_list" id="radio1" value="d"><a href="/services/ssl/#for-domain">Домен</a>
                    											</div>
                    										</li>
                    										<li class="">
                    											<div class="do">
                    												<input type="radio" name="ssl_type_list" id="radio1" value="do"><a href="/services/ssl/#for-domain-and-organization">Домен и организация</a>
                    											</div>
                    										</li>
                    									</ul>
                    								</div>
                    							</div>
                    							<div class="row">
                    								<div class="col-lg-3 col-md-3 col-sm-12">
                    									<h4>Дополнительные опции</h4>
                    								</div>
                    								<div class="col-lg-9 col-md-9 col-sm-12">
                    									<ul id="ssl-props-selector">
                    										<li>
                    											<div class="idn">
                    												<input type="checkbox" id="idn"><a href="/services/ssl/#about-idn">Поддержка национальных доменов</a>
                    											</div>
                    										</li>
                    										<li>
                    											<div class="ev">
                    												<input type="checkbox" id="ev"><a href="/services/ssl/#about-ev">Расширенная проверка</a>
                    											</div>
                    										</li>
                    										<li>
                    											<div class="wc">
                    												<input type="checkbox" id="wc"><a href="/services/ssl/#about-wc">Поддержка субдоменов</a>
                    											</div>
                    										</li>
                    										<li>
                    											<div class="sgc">
                    												<input type="checkbox" id="sgc"><a href="/services/ssl/#about-sgc">Высокий уровень шифрования</a>
                    											</div>
                    										</li>
                    									</ul>
                    								</div>
                    							</div>
                    						</form>
                    					</div>
                    				</div>
                    				<div id="ssl-table-body">									
                    					<ul id="ssl-table-tds">
                    						<li class="alert"><div>Сертификатов, удовлетворяющих всем критериям поиска не найдено</div></li>
                    						<li class="line" data-ssltype=" d" data-sslproperties=" idn ev">
                    							<div class="table-name">
                    								<div class="col-lg-3 col-md-3 col-sm-3">Название</div>
                    								<div class="col-lg-3 col-md-3 col-sm-3">Опции</div>
                    								<div class="col-lg-3 col-md-3 col-sm-3">Цена</div>
                    								<div class="col-lg-3 col-md-3 col-sm-3"></div>
                    							</div>
                    							<div class="row table-li-name">
                    								<div class="col-lg-3 col-md-3 col-sm-3">
                    									<div class="name">
                    										<span>Comodo</span> PositiveSSL
                    									</div>
                    								</div>
                    								<div class="col-lg-3 col-md-3 col-sm-3">
                    									<div class="props"><img src="assets/templates/default/img/services/ssl/d.png" alt="d" title="SSL сертификат с проверкой домена"></div>
                    								</div>
                    								<div class="col-lg-3 col-md-3 col-sm-3">
                    									<div class="price">от <span>39€</span> в год</div>
                    								</div>
                    								<div class="col-lg-3 col-md-3 col-sm-3">
                    									<div class="button">
                    										<a href="" class="btn btn-warning btn-round">Подробнее</a>
                    									</div>
                    								</div>
                    							</div>
                    							<div class="more table-responsive">
                    							<table cellpadding="0" cellspacing="0" border="0">
                    								<tbody>
                    									<tr>
                    										<td class="col-lg-3 col-md-3 col-sm-3"><img src="assets/templates/default/img/services/ssl/comodo.png" alt="" title=""></td>
                    										<td class="col-lg-3 col-md-3 col-sm-3">
                    											<div class="info">
                    												<p>Совместимость с браузерами: <strong>99%</strong></p>
                    												<p>Защита: <strong>128/256 бит</strong></p>
                    												<p>Гарантия: <strong>10 000$</strong></p>
                    											</div>
                    										</td>
                    										<td class="col-lg-3 col-md-3 col-sm-3">
                    											<ul class="prices">
                    												<li class="price"><span>700 Р</span> за 1 год</li>
                    												<li class="price"><span>1250 Р</span> за 2 года</li>
                    												<li class="price"><span>1700 Р</span> за 3 года</li>
                    												<li class="price"><span>2150 Р</span> за 4 года</li>
                    												<li class="price"><span>2650 Р</span> за 5 лет</li>
                    											</ul>
                    										</td>
                    										<td class="col-lg-3 col-md-3 col-sm-3"></td>
                    									</tr>
                    								</tbody>
                    							</table>
                    							</div>
                    						</li>
                    						<li class="line" data-ssltype=" d" data-sslproperties=" idn ev">
                    							<div class="row table-li-name">
                    								<div class="col-lg-3 col-md-3 col-sm-3">
                    									<div class="name">
                    										<span>Comodo</span> PositiveSSL
                    									</div>
                    								</div>
                    								<div class="col-lg-3 col-md-3 col-sm-3">
                    									<div class="props"><img src="assets/templates/default/img/services/ssl/d.png" alt="d" title="SSL сертификат с проверкой домена"></div>
                    								</div>
                    								<div class="col-lg-3 col-md-3 col-sm-3">
                    									<div class="price">от <span>39€</span> в год</div>
                    								</div>
                    								<div class="col-lg-3 col-md-3 col-sm-3">
                    									<div class="button">
                    										<a href="" class="btn btn-warning btn-round">Подробнее</a>
                    									</div>
                    								</div>
                    							</div>
                    							<div class="more">
                    							<table cellpadding="0" cellspacing="0" border="0">
                    								<tbody>
                    									<tr>
                    										<td class="col-lg-3 col-md-3 col-sm-3"><img src="assets/templates/default/img/services/ssl/comodo.png" alt="" title=""></td>
                    										<td class="col-lg-3 col-md-3 col-sm-3">
                    											<div class="info">
                    												<p>Совместимость с браузерами: <strong>99%</strong></p>
                    												<p>Защита: <strong>128/256 бит</strong></p>
                    												<p>Гарантия: <strong>10 000$</strong></p>
                    											</div>
                    										</td>
                    										<td class="col-lg-3 col-md-3 col-sm-3">
                    											<ul class="prices">
                    												<li class="price"><span>700 Р</span> за 1 год</li>
                    												<li class="price"><span>1250 Р</span> за 2 года</li>
                    												<li class="price"><span>1700 Р</span> за 3 года</li>
                    												<li class="price"><span>2150 Р</span> за 4 года</li>
                    												<li class="price"><span>2650 Р</span> за 5 лет</li>
                    											</ul>
                    										</td>
                    										<td class="col-lg-3 col-md-3 col-sm-3"></td>
                    									</tr>
                    								</tbody>
                    							</table>
                    							</div>
                    						</li>
                    					</ul>
                    				</div>
                    			</div>
                    		</div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="license">
                            <h5>Лицензии</h5>
                            <div class="pricing-7 section-gray">
                                <div class="row">
                                    <div class="col-lg-4 col-md-4">
                                        <div class="block block-pricing block-plain">
                                            <div class="table">
                                                <p><strong class="category">ONE</strong></p>
                                                <p><span class="block-caption"><small>$</small>0<small>/mo</small></span></p>
                                                <ul>
                                                    <li><b>4 GB</b> Ram</li>
                                                    <li><b>7/24</b> Tech Support</li>
                                                    <li><b>40 GB</b> SSD Cloud Storage</li>
                                                    <li>Monthly Backups</li>
                                                    <li>Palo Protection</li>
                                                </ul> <a href="#" class="btn btn-white btn-round">Подробнее</a> </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4">
                                        <div class="block block-pricing block-raised">
                                            <div class="table">
                                                <p><strong class="category">PRO</strong></p>
                                                <p><span class="block-caption"><small>$</small>12<small>/mo</small></span></p>
                                                <ul>
                                                    <li><b>4 GB</b> Ram</li>
                                                    <li><b>7/24</b> Tech Support</li>
                                                    <li><b>40 GB</b> SSD Cloud Storage</li>
                                                    <li>Monthly Backups</li>
                                                    <li>Palo Protection</li>
                                                </ul> <a href="#" class="btn btn-warning btn-round">Подробнее</a> </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4">
                                        <div class="block block-pricing block-plain">
                                            <div class="table">
                                                <p><strong class="category">VIP</strong></p>
                                                <p><span class="block-caption"><small>$</small>19<small>/mo</small></span></p>
                                                <ul>
                                                    <li><b>4 GB</b> Ram</li>
                                                    <li><b>7/24</b> Tech Support</li>
                                                    <li><b>40 GB</b> SSD Cloud Storage</li>
                                                    <li>Monthly Backups</li>
                                                    <li>Palo Protection</li>
                                                </ul> <a href="#" class="btn btn-white btn-round">Подробнее</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="dev">
                            <h5>Нужен сайт?</h5>
                            <div class="pricing-7 section-gray">
                                <div class="row">
                                    <div class="col-lg-4 col-md-4">
                                        <div class="block block-pricing block-plain">
                                            <div class="table">
                                                <p><strong class="category">ONE</strong></p>
                                                <p><span class="block-caption"><small>$</small>0<small>/mo</small></span></p>
                                                <ul>
                                                    <li><b>4 GB</b> Ram</li>
                                                    <li><b>7/24</b> Tech Support</li>
                                                    <li><b>40 GB</b> SSD Cloud Storage</li>
                                                    <li>Monthly Backups</li>
                                                    <li>Palo Protection</li>
                                                </ul> <a href="#" class="btn btn-white btn-round">Подробнее</a> </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4">
                                        <div class="block block-pricing block-raised">
                                            <div class="table">
                                                <p><strong class="category">PRO</strong></p>
                                                <p><span class="block-caption"><small>$</small>12<small>/mo</small></span></p>
                                                <ul>
                                                    <li><b>4 GB</b> Ram</li>
                                                    <li><b>7/24</b> Tech Support</li>
                                                    <li><b>40 GB</b> SSD Cloud Storage</li>
                                                    <li>Monthly Backups</li>
                                                    <li>Palo Protection</li>
                                                </ul> <a href="#" class="btn btn-warning btn-round">Подробнее</a> </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4">
                                        <div class="block block-pricing block-plain">
                                            <div class="table">
                                                <p><strong class="category">VIP</strong></p>
                                                <p><span class="block-caption"><small>$</small>19<small>/mo</small></span></p>
                                                <ul>
                                                    <li><b>4 GB</b> Ram</li>
                                                    <li><b>7/24</b> Tech Support</li>
                                                    <li><b>40 GB</b> SSD Cloud Storage</li>
                                                    <li>Monthly Backups</li>
                                                    <li>Palo Protection</li>
                                                </ul> <a href="#" class="btn btn-white btn-round">Подробнее</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="seo">
                            <h5>Продвижение сайта?</h5>
                            <div class="pricing-7 section-gray">
                                <div class="row">
                                    <div class="col-lg-4 col-md-4">
                                        <div class="block block-pricing block-plain">
                                            <div class="table">
                                                <p><strong class="category">ONE</strong></p>
                                                <p><span class="block-caption"><small>$</small>0<small>/mo</small></span></p>
                                                <ul>
                                                    <li><b>4 GB</b> Ram</li>
                                                    <li><b>7/24</b> Tech Support</li>
                                                    <li><b>40 GB</b> SSD Cloud Storage</li>
                                                    <li>Monthly Backups</li>
                                                    <li>Palo Protection</li>
                                                </ul> <a href="#" class="btn btn-white btn-round">Подробнее</a> </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4">
                                        <div class="block block-pricing block-raised">
                                            <div class="table">
                                                <p><strong class="category">PRO</strong></p>
                                                <p><span class="block-caption"><small>$</small>12<small>/mo</small></span></p>
                                                <ul>
                                                    <li><b>4 GB</b> Ram</li>
                                                    <li><b>7/24</b> Tech Support</li>
                                                    <li><b>40 GB</b> SSD Cloud Storage</li>
                                                    <li>Monthly Backups</li>
                                                    <li>Palo Protection</li>
                                                </ul> <a href="#" class="btn btn-warning btn-round">Подробнее</a> </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4">
                                        <div class="block block-pricing block-plain">
                                            <div class="table">
                                                <p><strong class="category">VIP</strong></p>
                                                <p><span class="block-caption"><small>$</small>19<small>/mo</small></span></p>
                                                <ul>
                                                    <li><b>4 GB</b> Ram</li>
                                                    <li><b>7/24</b> Tech Support</li>
                                                    <li><b>40 GB</b> SSD Cloud Storage</li>
                                                    <li>Monthly Backups</li>
                                                    <li>Palo Protection</li>
                                                </ul> <a href="#" class="btn btn-white btn-round">Подробнее</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="social">
                            <h5>Социальные сети</h5>
                            <div class="pricing-7 section-gray">
                                <div class="row">
                                    <div class="col-lg-4 col-md-4">
                                        <div class="block block-pricing block-plain">
                                            <div class="table">
                                                <p><strong class="category">ONE</strong></p>
                                                <p><span class="block-caption"><small>$</small>0<small>/mo</small></span></p>
                                                <ul>
                                                    <li><b>4 GB</b> Ram</li>
                                                    <li><b>7/24</b> Tech Support</li>
                                                    <li><b>40 GB</b> SSD Cloud Storage</li>
                                                    <li>Monthly Backups</li>
                                                    <li>Palo Protection</li>
                                                </ul> <a href="#" class="btn btn-white btn-round">Подробнее</a> </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4">
                                        <div class="block block-pricing block-raised">
                                            <div class="table">
                                                <p><strong class="category">PRO</strong></p>
                                                <p><span class="block-caption"><small>$</small>12<small>/mo</small></span></p>
                                                <ul>
                                                    <li><b>4 GB</b> Ram</li>
                                                    <li><b>7/24</b> Tech Support</li>
                                                    <li><b>40 GB</b> SSD Cloud Storage</li>
                                                    <li>Monthly Backups</li>
                                                    <li>Palo Protection</li>
                                                </ul> <a href="#" class="btn btn-warning btn-round">Подробнее</a> </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4">
                                        <div class="block block-pricing block-plain">
                                            <div class="table">
                                                <p><strong class="category">VIP</strong></p>
                                                <p><span class="block-caption"><small>$</small>19<small>/mo</small></span></p>
                                                <ul>
                                                    <li><b>4 GB</b> Ram</li>
                                                    <li><b>7/24</b> Tech Support</li>
                                                    <li><b>40 GB</b> SSD Cloud Storage</li>
                                                    <li>Monthly Backups</li>
                                                    <li>Palo Protection</li>
                                                </ul> <a href="#" class="btn btn-white btn-round">Подробнее</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
{$_modx->getChunk('@FILE content.tpl')}
{$_modx->getChunk('@FILE blogs.tpl')}
{$_modx->getChunk('@FILE clients.tpl')}
{$_modx->getChunk('@FILE support.tpl')}
{$_modx->getChunk('@FILE footer.tpl')}
{$_modx->getChunk('@FILE javascripts.tpl')}
</body>
</html>
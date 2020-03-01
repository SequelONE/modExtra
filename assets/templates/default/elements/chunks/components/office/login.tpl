				<a href="#auth" class="m-material-button m-submenu-toggle" data-toggle="modal" data-target="#auth" role="button"><i class="fas fa-user material-icons"></i></a>
                <div class="modal fade" id="auth" tabindex="-1" role="dialog" aria-labelledby="authLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content" id="office-auth-form">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">{'office_auth_login' | lexicon} / {'office_auth_register' | lexicon}</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <nav>
                                    <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                        <a class="nav-item nav-link active" id="nav-login-tab" data-toggle="tab" href="#nav-login" role="tab" aria-controls="nav-login" aria-selected="true">{'office_auth_login' | lexicon}</a>
                                        <a class="nav-item nav-link" id="nav-reg-tab" data-toggle="tab" href="#nav-reg" role="tab" aria-controls="nav-reg" aria-selected="false">{'office_auth_register' | lexicon}</a>
                                    </div>
                                </nav>
                                <div class="tab-content" id="nav-tabContent">
                                    <div class="tab-pane fade show active" id="nav-login" role="tabpanel" aria-labelledby="nav-login-tab">
                                        <form method="post" id="office-auth-login">
                                            <div class="form-group">
                                                <label for="office-auth-login-email" class="col-md-3 control-label">
                                                    {'office_auth_login_username' | lexicon}&nbsp;<span class="red">*</span>
                                                </label>
                                                <div class="col-md-12">
                                                    <input type="text" name="username" placeholder="" class="form-control"
                                                           id="office-auth-login-username" value=""/>
                                                    <p class="help-block">
                                                        <small>{'office_auth_login_username_desc' | lexicon}</small>
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="form-group hidden">
                                                <label for="office-auth-login-phone-code" class="col-md-3 control-label">
                                                    {'office_auth_login_phone_code' | lexicon}
                                                </label>
                                                <div class="col-md-12">
                                                    <input type="text" name="phone_code" class="form-control" id="office-auth-login-phone-code"
                                                           value="" readonly/>
                                                    <p class="help-block">
                                                        <small>{'office_auth_login_phone_code_desc' | lexicon}</small>
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="office-auth-login-password" class="col-md-3 control-label">
                                                    {'office_auth_login_password' | lexicon}
                                                </label>
                                                <div class="col-md-12">
                                                    <input type="password" name="password" placeholder="" class="form-control"
                                                           id="office-login-form-password" value=""/>
                                                    <p class="help-block">
                                                        <small>{'office_auth_login_password_desc' | lexicon}</small>
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <input type="hidden" name="action" value="auth/formLogin"/>
                                                <input type="hidden" name="return" value=""/>
                                                <div class="col-sm-offset-3 col-sm-12">
                                                    <button type="submit" class="btn btn-primary">{'office_auth_login_btn' | lexicon}</button>
                                                </div>
                                            </div>
                                        </form>
                                
                                        {if $providers?}
                                            <label>{'office_auth_login_ha' | lexicon}</label>
                                            <div>{$providers}</div>
                                            <p class="help-block">
                                                <small>{'office_auth_login_ha_desc' | lexicon}</small>
                                            </p>
                                        {/if}
                                        {if $error?}
                                            <div class="alert alert-block alert-danger alert-error">{$error}</div>
                                        {/if}
                                    </div>
                                    <div class="tab-pane fade" id="nav-reg" role="tabpanel" aria-labelledby="nav-reg-tab">
                                        <form method="post" id="office-auth-register">
                                            <div class="form-group">
                                                <label for="office-auth-register-email" class="col-md-3 control-label">
                                                    {'office_auth_register_email' | lexicon}{if $_modx->config.office_auth_mode == 'email'}&nbsp;<span class="red">*</span>{/if}
                                                </label>
                                                <div class="col-md-12">
                                                    <input type="email" name="email" placeholder="" class="form-control" id="office-auth-register-email"
                                                           value=""/>
                                                    <p class="help-block">
                                                        <small>{'office_auth_register_email_desc' | lexicon}</small>
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="office-auth-register-phone" class="col-md-3 control-label">
                                                    {'office_auth_register_phone' | lexicon}{if $_modx->config.office_auth_mode == 'phone'}&nbsp;<span class="red">*</span>{/if}
                                                </label>
                                                <div class="col-md-12">
                                                    <input type="text" name="mobilephone" placeholder="" class="form-control"
                                                           id="office-auth-register-phone" value=""/>
                                                    <p class="help-block">
                                                        <small>{'office_auth_register_phone_desc' | lexicon}</small>
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="form-group hidden">
                                                <label for="office-auth-register-phone-code" class="col-md-3 control-label">
                                                    {'office_auth_register_phone_code' | lexicon}
                                                </label>
                                                <div class="col-md-12">
                                                    <input type="text" name="phone_code" class="form-control" id="office-auth-register-phone-code"
                                                           value=""/>
                                                    <p class="help-block">
                                                        <small>{'office_auth_register_phone_code_desc' | lexicon}</small>
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="office-auth-register-password" class="col-md-3 control-label">
                                                    {'office_auth_register_password' | lexicon}
                                                </label>
                                                <div class="col-md-12">
                                                    <input type="password" name="password" placeholder="" class="form-control"
                                                           id="office-register-form-password" value=""/>
                                                    <p class="help-block">
                                                        <small>{'office_auth_register_password_desc' | lexicon}</small>
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="office-auth-register-username" class="col-md-3 control-label">
                                                    {'office_auth_register_username' | lexicon}
                                                </label>
                                                <div class="col-md-12">
                                                    <input type="text" name="username" placeholder="" class="form-control"
                                                           id="office-register-form-username" value=""/>
                                                    <p class="help-block">
                                                        <small>{'office_auth_register_username_desc' | lexicon}</small>
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="office-auth-register-fullname" class="col-md-3 control-label">
                                                    {'office_auth_register_fullname' | lexicon}
                                                </label>
                                                <div class="col-md-12">
                                                    <input type="text" name="fullname" placeholder="" class="form-control"
                                                           id="office-register-form-fullname" value=""/>
                                                    <p class="help-block">
                                                        <small>{'office_auth_register_fullname_desc' | lexicon}</small>
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <input type="hidden" name="action" value="auth/formRegister"/>
                                                <div class="col-sm-offset-3 col-sm-12">
                                                    <button type="submit" class="btn btn-danger">{'office_auth_register_btn' | lexicon}</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
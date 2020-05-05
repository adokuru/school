<div class="row justify-content-md-center">
        <div class="col-xl-10 col-lg-10 col-md-12 col-sm-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="header-title"><?php echo get_phrase('SMTP_settings') ; ?></h4>
                    <form method="POST" class="col-12 stripeSmtpForm" action="<?php echo route('smtp_settings/update') ; ?>" id = "smtpsettings">
                        <div class="col-12">
                            <div class="form-group row mb-3">
                                <label class="col-md-3 col-form-label" for="smtp_protocol">SMTP <?php echo get_phrase('protocol') ; ?></label>
                                <div class="col-md-9">
                                    <input type="text" id="smtp_protocol" name="smtp_protocol" class="form-control"  value="<?php echo get_settings('smtp_protocol') ; ?>" required>
                                </div>
                            </div>

                            <div class="form-group row mb-3">
                                <label class="col-md-3 col-form-label" for="smtp_host">SMTP <?php echo get_phrase('host') ; ?></label>
                                <div class="col-md-9">
                                    <input type="text" id="smtp_host" name="smtp_host" class="form-control"  value="<?php echo get_settings('smtp_host') ; ?>" required>
                                </div>
                            </div>

                            <div class="form-group row mb-3">
                                <label class="col-md-3 col-form-label" for="smtp_port">SMTP <?php echo get_phrase('port') ; ?></label>
                                <div class="col-md-9">
                                    <input type="text" id="smtp_port" name="smtp_port" class="form-control"  value="<?php echo get_settings('smtp_port') ; ?>" required>
                                </div>
                            </div>
                            <div class="form-group row mb-3">
                                <label class="col-md-3 col-form-label" for="smtp_username">SMTP <?php echo get_phrase('username') ; ?></label>
                                <div class="col-md-9">
                                    <input type="text" id="smtp_username" name="smtp_username" class="form-control"  value="<?php echo get_settings('smtp_username') ; ?>" required>
                                </div>
                            </div>
                            <div class="form-group row mb-3">
                                <label class="col-md-3 col-form-label" for="smtp_password">SMTP <?php echo get_phrase('password') ; ?></label>
                                <div class="col-md-9">
                                    <input type="text" id="smtp_password" name="smtp_password" class="form-control"  value="<?php echo get_settings('smtp_password') ; ?>" required>
                                </div>
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-secondary col-xl-4 col-lg-6 col-md-12 col-sm-12" onclick="updateSmtpInfo()"><?php echo get_phrase('update_SMTP_settings') ; ?></button>
                            </div>
                        </div>
                    </form>

                </div> <!-- end card body-->
            </div> <!-- end card -->
        </div>
    </div>

<div class="row">
  <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
    <div class="card">
      <div class="card-body">
        <h4 class="header-title"><?php echo get_phrase('paypal_settings') ;?></h4>
        <form method="POST" class="col-12 paypalAjaxForm" action="<?php echo route('payment_settings/paypal') ;?>" id = "paypal_settings">
          <div class="col-12">
            <div class="form-group row mb-3">
              <label class="col-md-3 col-form-label" for="paypal_active"> <?php echo get_phrase('active') ;?> </label>
              <div class="col-md-9">
                <select class="form-control" name="paypal_active" id="paypal_active">
                  <option value="yes" <?php if (get_settings('paypal_active') == 'yes'): ?> selected <?php endif; ?>><?php echo get_phrase('yes') ;?></option>
                  <option value="no" <?php if (get_settings('paypal_active') == 'no'): ?> selected <?php endif; ?>><?php echo get_phrase('no') ;?></option>
                </select>
              </div>
            </div>

            <div class="form-group row mb-3">
              <label class="col-md-3 col-form-label" for="paypal_mode"><?php echo get_phrase('mode') ;?></label>
              <div class="col-md-9">
                <select class="form-control" name="paypal_mode" id="paypal_mode">
                  <option value="sandbox" <?php if (get_settings('paypal_mode') == 'sandbox'): ?> selected <?php endif; ?>><?php echo get_phrase('sandbox') ;?></option>
                  <option value="production" <?php if (get_settings('paypal_mode') == 'production'): ?> selected <?php endif; ?>><?php echo get_phrase('production') ;?></option>
                </select>
              </div>
            </div>

            <div class="form-group row mb-3">
              <label class="col-md-3 col-form-label" for="paypal_client_id_sandbox"> <?php echo get_phrase('client_id_(sandbox)') ;?></label>
              <div class="col-md-9">
                <input type="text" id="paypal_client_id_sandbox" name="paypal_client_id_sandbox" class="form-control"  value="<?php echo get_settings('paypal_client_id_sandbox') ;?>" required>
              </div>
            </div>

            <div class="form-group row mb-3">
              <label class="col-md-3 col-form-label" for="paypal_client_id_production"> <?php echo get_phrase('client_id_(production)') ;?></label>
              <div class="col-md-9">
                <input type="text" id="paypal_client_id_production" name="paypal_client_id_production" class="form-control"  value="<?php echo get_settings('paypal_client_id_production') ;?>" required>
              </div>
            </div>

            <div class="text-center">
              <button type="submit" class="btn btn-secondary col-xl-4 col-lg-4 col-md-12 col-sm-12" onclick="updatePaypalInfo()"><?php echo get_phrase('update_paypal_settings') ;?></button>
            </div>
          </div>
        </form>

      </div> <!-- end card body-->
    </div> <!-- end card -->
  </div>

  <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
    <div class="card">
      <div class="card-body">
        <h4 class="header-title"><?php echo get_phrase('stripe_settings') ;?></h4>
        <form method="POST" class="col-12 stripeAjaxForm" action="<?php echo route('payment_settings/stripe') ;?>" id = "stripe_settings">
          <div class="col-12">
            <div class="form-group row mb-3">
              <label class="col-md-3 col-form-label" for="stripe_active"> <?php echo get_phrase('active') ;?></label>
              <div class="col-md-9">
                <select class="form-control" name="stripe_active" id="stripe_active">
                  <option value="yes" <?php if (get_settings('stripe_active') == 'yes'): ?> selected <?php endif; ?>><?php echo get_phrase('yes') ;?></option>
                  <option value="no" <?php if (get_settings('stripe_active') == 'no'): ?> selected <?php endif; ?>><?php echo get_phrase('no') ;?></option>
                </select>
              </div>
            </div>

            <div class="form-group row mb-3">
              <label class="col-md-3 col-form-label" for="stripe_mode"><?php echo get_phrase('test_mode') ;?></label>
              <div class="col-md-9">
                <select class="form-control" name="stripe_mode" id="stripe_mode">
                  <option value="on" <?php if (get_settings('stripe_mode') == 'on'): ?> selected <?php endif; ?>><?php echo get_phrase('on') ;?></option>
                  <option value="off" <?php if (get_settings('stripe_mode') == 'off'): ?> selected <?php endif; ?>><?php echo get_phrase('off') ;?></option>
                </select>
              </div>
            </div>

            <div class="form-group row mb-3">
              <label class="col-md-3 col-form-label" for="stripe_test_secret_key"> <?php echo get_phrase('test_secret_key') ;?></label>
              <div class="col-md-9">
                <input type="text" id="stripe_test_secret_key" name="stripe_test_secret_key" class="form-control"  value="<?php echo get_settings('stripe_test_secret_key') ;?>" required>
              </div>
            </div>

            <div class="form-group row mb-3">
              <label class="col-md-3 col-form-label" for="stripe_test_public_key"> <?php echo get_phrase('test_public_key') ;?></label>
              <div class="col-md-9">
                <input type="text" id="stripe_test_public_key" name="stripe_test_public_key" class="form-control"  value="<?php echo get_settings('stripe_test_public_key') ;?>" required>
              </div>
            </div>

            <div class="form-group row mb-3">
              <label class="col-md-3 col-form-label" for="stripe_live_secret_key"> <?php echo get_phrase('live_secret_key') ;?></label>
              <div class="col-md-9">
                <input type="text" id="stripe_live_secret_key" name="stripe_live_secret_key" class="form-control"  value="<?php echo get_settings('stripe_live_secret_key') ;?>" required>
              </div>
            </div>

            <div class="form-group row mb-3">
              <label class="col-md-3 col-form-label" for="stripe_live_public_key"> <?php echo get_phrase('live_public_key') ;?></label>
              <div class="col-md-9">
                <input type="text" id="stripe_live_public_key" name="stripe_live_public_key" class="form-control"  value="<?php echo get_settings('stripe_live_public_key') ;?>" required>
              </div>
            </div>

            <div class="text-center">
              <button type="submit" class="btn btn-secondary col-xl-4 col-lg-4 col-md-12 col-sm-12" onclick="updateStripeInfo()"><?php echo get_phrase('update_stripe_settings') ;?></button>
            </div>
          </div>
        </form>
      </div> <!-- end card body-->
    </div> <!-- end card -->
  </div>
</div>

<script type="text/javascript">
$(document).ready(function() {
  initSelect2(['#paypal_active', '#paypal_mode', '#stripe_active', '#stripe_mode']);
  $('#date').daterangepicker();
});
</script>

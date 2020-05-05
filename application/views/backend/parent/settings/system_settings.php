
<div class="row">
  <div class="col-xl-7 col-lg-12 col-md-12 col-sm-12">
    <div class="card">
      <div class="card-body">
        <h4 class="header-title"><?php echo get_phrase('system_settings') ;?></h4>
        <form method="POST" class="col-12 systemAjaxForm" action="<?php echo route('system_settings/update') ;?>" id = "system_settings">
          <div class="col-12">
            <div class="form-group row mb-3">
              <label class="col-md-3 col-form-label" for="system_name"> <?php echo get_phrase('system_name') ;?></label>
              <div class="col-md-9">
                <input type="text" id="system_name" name="system_name" class="form-control"  value="<?php echo get_settings('system_name') ;?>" required>
              </div>
            </div>

            <div class="form-group row mb-3">
              <label class="col-md-3 col-form-label" for="system_title"><?php echo get_phrase('title') ;?></label>
              <div class="col-md-9">
                <input type="text" id="system_title" name="system_title" class="form-control"  value="<?php echo get_settings('system_title') ;?>" required>
              </div>
            </div>

            <div class="form-group row mb-3">
              <label class="col-md-3 col-form-label" for="system_email"> <?php echo get_phrase('school_email') ;?></label>
              <div class="col-md-9">
                <input type="email" id="system_email" name="system_email" class="form-control"  value="<?php echo get_settings('system_email') ;?>" required>
              </div>
            </div>
            <div class="form-group row mb-3">
              <label class="col-md-3 col-form-label" for="phone"> <?php echo get_phrase('phone') ;?></label>
              <div class="col-md-9">
                <input type="text" id="phone" name="phone" class="form-control"  value="<?php echo get_settings('phone') ;?>" required>
              </div>
            </div>
            <div class="form-group row mb-3">
              <label class="col-md-3 col-form-label" for="address"> <?php echo get_phrase('address') ;?></label>
              <div class="col-md-9">
                <textarea class="form-control" id="address" name = "address" rows="5" required><?php echo get_settings('address') ;?></textarea>
              </div>
            </div>
            <div class="form-group row mb-3">
              <label class="col-md-3 col-form-label" for="purchase_code"> <?php echo get_phrase('purchase_code') ;?></label>
              <div class="col-md-9">
                <input type="text" id="purchase_code" name="purchase_code" class="form-control"  value="<?php echo get_settings('purchase_code') ;?>" required>
              </div>
            </div>
            <div class="form-group row mb-3">
              <label class="col-md-3 col-form-label" for="purchase_code"> <?php echo get_phrase('timezone') ;?></label>

              <div class="col-md-9">
                <select class="form-control select2" data-toggle="select2" id="timezone" name="timezone">
                  <?php $tzlist = DateTimeZone::listIdentifiers(DateTimeZone::ALL); ?>
                  <?php foreach ($tzlist as $tz): ?>
                    <option value="<?php echo $tz ;?>" @if(env('TIMEZONE') == $tz) selected @endif><?php echo $tz ;?></option>
                  <?php endforeach; ?>
                </select>
              </div>
            </div>
            <div class="text-center">
              <button type="submit" class="btn btn-secondary col-xl-4 col-lg-4 col-md-12 col-sm-12" onclick="updateSystemInfo($('#system_name').val())"><?php echo get_phrase('update_settings') ;?></button>
            </div>
          </div>
        </form>

      </div> <!-- end card body-->
    </div> <!-- end card -->
  </div>
  <div class="col-xl-5 col-lg-12 col-md-12 col-sm-12">
    <div class="card">
      <div class="card-body">
        <h4 class="header-title"><?php echo get_phrase('system_logo') ;?></h4>
        <form method="POST" class="col-12 systemLogoAjaxForm" action="<?php echo route('system_settings/logo_update') ;?>" id = "system_settings" enctype="multipart/form-data">

          <div class="col-12">
            <div class="form-group row mb-3">
              <label class="col-md-3 col-form-label" for="example-fileinput"><?php echo get_phrase('profile_image'); ?></label>
              <div class="col-md-9 custom-file-upload">
                <div class="wrapper-image-preview" style="margin-left: -6px;">
                  <div class="box" style="width: 250px;">
                    <div class="js--image-preview" style="background-image: url(<?php echo base_url('assets/backend/images/logo-dark.png'); ?>); background-color: #F5F5F5;"></div>
                    <div class="upload-options">
                      <label for="logo" class="btn"> <i class="mdi mdi-camera"></i> <?php echo get_phrase('upload_logo'); ?> </label>
                      <input id="logo" style="visibility:hidden;" type="file" class="image-upload" name="logo" accept="image/*">
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="text-center">
              <button type="submit" class="btn btn-secondary col-xl-4 col-lg-6 col-md-12 col-sm-12" onclick="updateSystemLogo()"><?php echo get_phrase('update_logo') ;?></button>
            </div>
          </div>
        </form>
      </div> <!-- end card body-->
    </div> <!-- end card -->
  </div>
</div>

<script type="text/javascript">
$(document).ready(function () {
  initSelect2(['#timezone']);
});
</script>

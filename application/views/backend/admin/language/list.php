<?php $languages = $this->settings_model->get_all_languages(); ?>
<?php if (count($languages) > 0): ?>
    <div class="table-responsive-sm">
        <table id="basic-datatable" class="table table-striped dt-responsive nowrap" width="100%">
            <thead class="thead-dark">
                <tr>
                    <th><?php echo  get_phrase('name') ;?></th>
                    <th><?php echo  get_phrase('option') ;?></th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($languages as $language): ?>
                    <tr>
                        <td>
                            <?php echo  ucfirst($language);?>
                            <?php if (get_settings('language') == $language): ?>
                                <i class="mdi mdi-check-circle" style="color: #4CAF50;"></i>
                            <?php endif; ?>
                         </td>
                        <td>
                            <div class="btn-group mb-2">
                                <button type="button" class="btn btn-icon btn-secondary btn-sm" style="margin-right:5px;" onclick="rightModal('<?php echo  site_url('modal/popup/language/phrase/'.$language) ;?>', '<?php echo  get_phrase('update_phrases_for') ;?> <?php echo  $language ;?>')" data-toggle="tooltip" data-placement="top" title="" data-original-title="<?php echo  get_phrase('update_phrases') ;?>"> <i class="mdi mdi-update"></i> </button>
                                <button type="button" class="btn btn-icon btn-secondary btn-sm btn-dark" style="margin-right:5px;" onclick="rightModal('<?php echo site_url('modal/popup/language/edit/'.$language)?>', '<?php echo get_phrase('update_language'); ?>');" data-toggle="tooltip" data-placement="top" title="" data-original-title="<?php echo get_phrase('update_language'); ?>"> <i class="mdi mdi-wrench"></i></button>
                                <button id="uname" type="button" class="btn btn-icon btn-secondary btn-sm" style="margin-right:5px;" onclick="confirmModal('<?php echo route('language/delete/'.$language); ?>', showAllLanguages )" data-toggle="tooltip" data-placement="top" title="" data-original-title="<?php echo get_phrase('delete_language'); ?>"> <i class="mdi mdi-window-close"></i></button>
                            </div>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
<?php else: ?>
    <?php include APPPATH.'views/backend/empty.php'; ?>
<?php endif; ?>

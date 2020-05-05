<?php
$school_id = school_id();
$classes = $this->db->get_where('classes', array('school_id' => $school_id))->result_array();
if (count($classes) > 0): ?>
<table id="basic-datatable" class="table table-striped dt-responsive nowrap" width="100%">
    <thead>
        <tr style="background-color: #313a46; color: #ababab;">
            <th><?php echo get_phrase('name'); ?></th>
            <th><?php echo get_phrase('section'); ?></th>
            <th><?php echo get_phrase('options'); ?></th>
        </tr>
    </thead>
    <tbody>
        <?php foreach($classes as $class): ?>
            <tr>
                <td><?php echo $class['name']; ?></td>
                <td>
                    <ul>
                        <?php
                        $sections = $this->db->get_where('sections', array('class_id' => $class['id']))->result_array();
                        foreach($sections as $section){
                            echo '<li>'.$section['name'].'</li>';
                        }
                        ?>
                    </ul>
                </td>
                <td>
                    <button type="button" class="btn btn-icon btn-secondary btn-sm btn-dark" style="margin-right:5px;" onclick="rightModal('<?php echo site_url('modal/popup/class/sections/'.$class['id'])?>', '<?php echo get_phrase('sctions'); ?>');" data-toggle="tooltip" data-placement="top" title="" data-original-title="<?php echo get_phrase('manage_sections'); ?>"> <i class="dripicons-checklist"></i></button>

                    <button type="button" class="btn btn-icon btn-secondary btn-sm btn-dark" style="margin-right:5px;" onclick="rightModal('<?php echo site_url('modal/popup/class/edit/'.$class['id'])?>', '<?php echo get_phrase('update_class'); ?>');" data-toggle="tooltip" data-placement="top" title="" data-original-title="<?php echo get_phrase('update_class_info'); ?>"> <i class="mdi mdi-wrench"></i></button>

                    <button type="button" class="btn btn-icon btn-secondary btn-sm" style="margin-right:5px;" onclick="confirmModal('<?php echo route('class/delete/'.$class['id']); ?>', showAllClasses)" data-toggle="tooltip" data-placement="top" title="" data-original-title="<?php echo get_phrase('delete_class'); ?>"> <i class="mdi mdi-window-close"></i></button>
                </td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>
<?php else: ?>
    <?php include APPPATH.'views/backend/empty.php'; ?>
<?php endif; ?>

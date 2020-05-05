<?php $expense_categories = $this->crud_model->get_expense_categories()->result_array(); ?>
<?php if (count($expense_categories) > 0): ?>
    <div class="table-responsive-sm">
        <table id="basic-datatable" class="table table-striped dt-responsive nowrap" width="100%">
            <thead class="thead-dark">
                <tr>
                    <th><?php echo get_phrase('name'); ?></th>
                    <th><?php echo get_phrase('option'); ?></th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($expense_categories as $expense_category): ?>
                    <tr>
                        <td><?php echo $expense_category['name']; ?></td>
                        <td>
                            <div class="btn-group mb-2">
                                <button type="button" class="btn btn-icon btn-secondary btn-sm btn-dark" style="margin-right:5px;" onclick="rightModal('<?php echo site_url('modal/popup/expense_category/edit/'.$expense_category['id'])?>', '<?php echo get_phrase('update_expense_category'); ?>');" data-toggle="tooltip" data-placement="top" title="" data-original-title="<?php echo get_phrase('update_expense_category'); ?>"> <i class="mdi mdi-wrench"></i></button>

                                <button id="uname" type="button" class="btn btn-icon btn-secondary btn-sm" style="margin-right:5px;" onclick="confirmModal('<?php echo route('expense_category/delete/'.$expense_category['id']); ?>', showAllExpenseCategories )" data-toggle="tooltip" data-placement="top" title="" data-original-title="<?php echo get_phrase('delete_expense_category'); ?>"> <i class="mdi mdi-window-close"></i></button>
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

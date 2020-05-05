<?php $student_data = $this->user_model->get_logged_in_student_details(); ?>

<table id="basic-datatable" class="table table-striped dt-responsive nowrap" width="100%">
  <thead class="thead-dark">
    <tr>
      <th><?php echo get_phrase('student'); ?></th>
      <th><?php echo get_phrase('class'); ?></th>
      <th><?php echo get_phrase('invoice_title'); ?></th>
      <th><?php echo get_phrase('total_amount'); ?></th>
      <th><?php echo get_phrase('paid_amount'); ?></th>
      <th><?php echo get_phrase('status'); ?></th>
      <th><?php echo get_phrase('creation_date'); ?></th>
      <th><?php echo get_phrase('option'); ?></th>
    </tr>
  </thead>
  <tbody>
    <?php $invoices = $this->crud_model->get_invoice_by_student_id($student_data['id'])->result_array();
    foreach ($invoices as $invoice):
      $class_details = $this->crud_model->get_class_details_by_id($invoice['class_id'])->row_array(); ?>
      <tr>
        <td> <?php echo $student_data['name']; ?> </td>
        <td> <?php echo $class_details['name']; ?> </td>
        <td> <?php echo $invoice['title']; ?> </td>
        <td> <?php echo currency($invoice['total_amount']); ?> </td>
        <td> <?php echo currency($invoice['paid_amount']); ?> </td>
        <td>
          <?php if (strtolower($invoice['status']) == 'unpaid'): ?>
            <span class="badge badge-danger-lighten"><?php echo ucfirst($invoice['status']); ?></span>
          <?php else: ?>
            <span class="badge badge-success-lighten"><?php echo ucfirst($invoice['status']); ?></span>
          <?php endif; ?>
        </td>
        <td> <?php echo date('D, d-M-Y', $invoice['created_at']); ?> </td>
        <td>
          <?php if (strtolower($invoice['status']) == 'unpaid'): ?>
            <div class="dropdown text-center">
              <button type="button" class="btn btn-sm btn-icon btn-rounded btn-outline-secondary dropdown-btn dropdown-toggle arrow-none card-drop" data-toggle="dropdown" aria-expanded="false"><i class="mdi mdi-dots-vertical"></i></button>
              <div class="dropdown-menu dropdown-menu-right">
                <form class="dropdown-item" action="<?php echo route('paypal_checkout'); ?>" method="post">
                  <input type="hidden" name="invoice_id" value="<?php echo $invoice['id']; ?>">
                  <button type="submit" class="btn btn-rounded btn-link" name="button"><i class="fa fa-paypal"></i> <?php echo get_phrase('paypal'); ?></button>
                </form>
                <form class="dropdown-item" action="<?php echo route('stripe_checkout'); ?>" method="post">
                  <input type="hidden" name="invoice_id" value="<?php echo $invoice['id']; ?>">
                  <button type="submit" class="btn btn-rounded btn-link" name="button"><i class="fa fa-cc-stripe"></i> <?php echo get_phrase('stripe'); ?></button>
                </form>
              </div>
            </div>
          <?php elseif (strtolower($invoice['status']) == 'paid'): ?>
            <div class="dropdown text-center">
              <button type="button" class="btn btn-sm btn-icon btn-rounded btn-outline-secondary dropdown-btn dropdown-toggle arrow-none card-drop" data-toggle="dropdown" aria-expanded="false"><i class="mdi mdi-dots-vertical"></i></button>
              <div class="dropdown-menu dropdown-menu-right">
                <a href="<?php echo route('invoice/invoice/'.$invoice['id']); ?>" class="dropdown-item" target="_blank"><?php echo get_phrase('print_invoice'); ?></a>
              </div>
            </div>
          <?php endif; ?>
        </td>
      </tr>
    <?php endforeach; ?>
  </tbody>
</table>

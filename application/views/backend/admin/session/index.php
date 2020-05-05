<!--title-->
<div class="row ">
  <div class="col-xl-12">
    <div class="card">
      <div class="card-body">
        <h4 class="page-title">
          <i class="mdi mdi-calendar-range title_icon"></i> <?php echo get_phrase('session'); ?>
        </h4>
      </div> <!-- end card body-->
    </div> <!-- end card -->
  </div><!-- end col-->
</div>
<div class="row session_content">
    <?php include 'list.php'; ?>
</div>


<script>
function makeSessionActive() {
    var session_id = $('#session_dropdown').val();
    var url = '<?php echo route('session_manager/active_session/'); ?>'+session_id
    $.ajax({
        type : 'GET',
        url: url,
        processData: false,
        contentType: false,
        dataType: 'json',
        success : function(response) {
            // $('#session_content').html(response.view);
            (response.status === true) ? toastr.success(response.notification) : toastr.error(response.notification);
        }
    });

    showAllSessions();
}

var showAllSessions = function () {
    var url = '<?php echo route('session_manager/list'); ?>';

    $.ajax({
        type : 'GET',
        url: url,
        success : function(response) {
            $('.session_content').html(response);
            initDataTable('basic-datatable');
            initSelect2(['#session_dropdown']);
        }
    });
}
</script>

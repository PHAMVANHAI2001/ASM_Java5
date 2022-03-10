<script
        src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
        crossorigin="anonymous"></script>
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
<script src="/assets/admin/js/scripts.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.11.4/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.11.4/js/dataTables.bootstrap5.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/izitoast/1.4.0/js/iziToast.min.js" integrity="sha512-Zq9o+E00xhhR/7vJ49mxFNJ0KQw1E1TMWkPTxrWcnpfEFDEXgUiwJHIKit93EW/XxE31HSI5GEOW06G6BF1AtA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script>
    // DataTable
    $(document).ready(function () {
        $('#example').DataTable({
            lengthMenu: [3,5,10],
            pageLength: 3,
        });
    });

    // User management
    $('#saveUserForm').on('submit', function (e) {
        e.preventDefault();
        var data = new FormData($(this)[0]);
        $.ajax({
            url: '/api/admin/user/save',
            type: 'POST',
            enctype: 'multipart/form-data',
            data: data,
            contentType: false,
            processData: false,
            cache: false,
            timeout: 1000000,
            success: function (data) {
                window.location.href = '/admin/list-user';
            },
            error: function (err) {
                iziToast.error({
                    position: 'topRight',
                    message:err.responseJSON.message,
                });
            }
        });
    });
</script>
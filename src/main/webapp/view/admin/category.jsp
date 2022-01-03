<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <c:import url="../import/admin/management/head.jsp"/>
    <title>Quản lý | Thể loại</title>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">
    <!-- Navbar -->
    <c:import url="../import/admin/navbar.jsp"/>
    <!-- /.navbar -->
    <!-- Main Sidebar Container -->
    <c:import url="../import/admin/sidebar.jsp"/>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <c:import url="../import/admin/header.jsp"/>
        <!-- /.content-header -->
        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <form action="" method="post">
                                    <button type="button" class="btn btn-success mr-2 float-left"
                                            data-toggle="modal" data-target="#create-modal" title="Thêm"><i class="fas fa-plus"></i></button>
                                    <button type="submit" class="btn btn-danger font-weight-bolder float-left"
                                            onclick="return confirm('Xác nhận xóa các thương hiệu đã chọn?')"><i class="fas fa-trash-alt"></i></button>
                                    <table id="category" class="table table-bordered table-striped">
                                    <thead>
                                    <tr class="text-center">
                                        <th class="align-middle"><input type="checkbox" name="checkBoxAll" id="checkBoxAll"></th>
                                        <th class="align-middle">Mã thể loại</th>
                                        <th class="align-middle">Tên thể loại</th>
                                        <th class="align-middle">Trạng thái</th>
                                        <th>
                                            <span class="d-none">Tác vụ</span>
                                            <button type="button" class="btn btn-success btn-block" data-toggle="modal" data-target="#create-modal"
                                                    title="Thêm">
                                                <i class="fas fa-plus"></i>
                                            </button>
                                        </th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <jsp:useBean id="categories" scope="request" type="java.util.List"/>
                                    <c:forEach items="${categories}" var="category" varStatus="i">
                                        <tr>
                                            <td class="text-center align-middle"><input type="checkbox" class="checkBoxId" name="id" value="${category.id}"></td>
                                            <td class="text-center align-middle">${category.sku}</td>
                                            <td class="align-middle">${category.name}</td>
                                            <td class="text-center align-middle text-success">
                                                Mở
                                                <form action="<%=request.getContextPath()%>/admin/category?action=changeActive" method="POST" class="d-inline-block">
                                                    <input type="hidden" name="sku" value="${category.sku}">
                                                    <button type="submit" class="btn p-1 bg-transparent text-danger"><i class="fas fa-sync-alt"></i></button>
                                                </form>
                                            </td>
                                            <td class="d-flex justify-content-center">
                                                <input type="hidden" name="sku" value="${category.sku}"/>
                                                <button class="btn btn-warning d-block w-100 mr-1 update" data-toggle="modal"
                                                        data-target="#update-modal" title="Cập nhật"><i class="fas fa-edit"></i></button>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                                </form>
                            </div>
                            <!-- /.card-body -->
                        </div>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
            <!-- Create modal -->
            <div class="modal fade" id="create-modal" style="display: none;" aria-hidden="true">
                <div class="modal-dialog modal-sm">
                    <div class="modal-content card card-success">
                        <div class="modal-header card-header">
                            <h5 class="modal-title font-weight-bolder">Tạo mới</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <form action="<%=request.getContextPath()%>/admin/category?action=create" method="POST" id="create" novalidate="novalidate">
                            <div class="modal-body card-body">
                                <div class="form-group">
                                    <label>Mã thể loại (In hoa)</label>
                                    <input type="text" name="sku" class="form-control" style="text-transform:uppercase" placeholder="VD: G, GH, GHE"/>
                                </div>
                                <div class="form-group">
                                    <label>Tên thể loại</label>
                                    <input type="text" name="name" class="form-control" placeholder="VD: Ghế"/>
                                </div>
                            </div>
                            <div class="modal-footer justify-content-between">
                                <button type="button" class="btn btn-danger font-weight-bolder" data-dismiss="modal">Đóng</button>
                                <button type="submit" class="btn btn-primary font-weight-bolder">Lưu</button>
                            </div>
                        </form>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->
            <%-- Update modal --%>
            <div class="modal fade" id="update-modal" style="display: none;" aria-hidden="true">
                <div class="modal-dialog modal-sm">
                    <div class="modal-content card card-warning">
                        <div class="modal-header card-header">
                            <h5 class="modal-title font-weight-bolder">Cập nhật</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <form action="<%=request.getContextPath()%>/admin/category?action=update" method="POST" id="update" novalidate="novalidate">
                            <input type="hidden" name="sku"/>
                            <div class="modal-body card-body">
                                <div class="form-group">
                                    <label>Mã thể loại (In hoa)</label>
                                    <input type="text" name="sku" class="form-control" style="text-transform:uppercase" placeholder="VD: G, GH, GHE"/>
                                </div>
                                <div class="form-group">
                                    <label>Tên thể loại</label>
                                    <input type="text" name="name" class="form-control" placeholder="VD: Ghế"/>
                                </div>
                            </div>
                            <div class="modal-footer justify-content-between">
                                <button type="button" class="btn btn-danger font-weight-bolder" data-dismiss="modal">Đóng</button>
                                <button type="submit" class="btn btn-primary font-weight-bolder">Lưu</button>
                            </div>
                        </form>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->
            <%-- Delete modal --%>
            <div class="modal fade" id="delete-modal" style="display: none;" aria-hidden="true">
                <div class="modal-dialog modal-sm">
                    <div class="modal-content card card-danger">
                        <div class="modal-header card-header">
                            <h5 class="modal-title font-weight-bolder">Cảnh báo</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <form action="<%=request.getContextPath()%>/admin/category?action=delete" method="POST">
                            <input type="hidden" name="sku[]"/>
                            <div class="modal-body card-body">
                                <div class="form-group">
                                    <span>Xác nhận xóa sản phẩm đã chọn?</span>
                                </div>
                            </div>
                            <div class="modal-footer justify-content-between">
                                <button type="button" class="btn btn-danger font-weight-bolder" data-dismiss="modal">Hủy</button>
                                <button type="submit" class="btn btn-primary font-weight-bolder">Đồng ý</button>
                            </div>
                        </form>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <c:import url="../import/admin/footer.jsp"/>
    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->
<c:import url="../import/admin/management/script.jsp"/>
<!-- Page specific script -->
<script>
    jQuery(function () {
        jQuery("#category").DataTable({
            "responsive": true, "lengthChange": false, "autoWidth": false,
            "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"],
            "order": [[1, "asc"]],
            "columnDefs": [
                {
                    "targets"  : 0,
                    "orderable": false,
                },
                {
                    "targets"  : 4,
                    "orderable": false,
                    "width": "15%"
                }
            ]
        }).buttons().container().appendTo('#category_wrapper .col-md-6:eq(0)');
        jQuery('#create').validate({
            rules: {
                sku: {
                    required: true
                },
                name: {
                    required: true
                }
            },
            messages: {
                sku: "Vui lòng nhập mã định danh",
                name: "Vui lòng nhập loại sản phẩm"
            },
            errorElement: 'span',
            errorPlacement: function (error, element) {
                error.addClass('invalid-feedback');
                element.closest('.form-group').append(error);
            },
            highlight: function (element, errorClass, validClass) {
                jQuery(element).addClass('is-invalid');
            },
            unhighlight: function (element, errorClass, validClass) {
                jQuery(element).removeClass('is-invalid');
            }
        });
        jQuery('#update').validate({
            rules: {
                sku: {
                    required: true
                },
                name: {
                    required: true
                }
            },
            messages: {
                sku: "Vui lòng nhập mã định danh",
                name: "Vui lòng nhập loại sản phẩm"
            },
            errorElement: 'span',
            errorPlacement: function (error, element) {
                error.addClass('invalid-feedback');
                element.closest('.form-group').append(error);
            },
            highlight: function (element, errorClass, validClass) {
                jQuery(element).addClass('is-invalid');
            },
            unhighlight: function (element, errorClass, validClass) {
                jQuery(element).removeClass('is-invalid');
            }
        });
        jQuery('.delete').on('click', function() {
            let skus = [];
    
            jQuery('input[name="sku"]').each(function () {
                if (jQuery(this).is(':checked')) {
                    skus.push(jQuery(this).val());
                }
            })
            jQuery('#delete-modal input[name = "sku[]"]').val(skus);
            console.log(jQuery('#delete-modal input[name = "sku[]"]').val());
        });
        jQuery('.update').on('click', function() {
            let id = jQuery(this).parent().find('input[name = "id"]').val();
            $.ajax({
                type: "GET",
                url: '<%=request.getContextPath()%>/category/get',
                data: { id: id },
                dataType: "json",
                contentType: "application/json",
                success: function (data) {
                    jQuery('#update-modal input[name = "id"]').val(data.id);
                    jQuery('#update-modal input[name = "sku"]').val(data.sku);
                    jQuery('#update-modal input[name = "name"]').val(data.name);
                }
            })
        });
    
        jQuery('#checkBoxAll').click(function () {
            if (jQuery(this).is(':checked')) {
                jQuery('.checkBoxId').prop('checked', true);
            } else {
                jQuery('.checkBoxId').prop('checked', false);
            }
        })
    });
</script>
</body>
</html>

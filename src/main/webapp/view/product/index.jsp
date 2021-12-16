<%@ page import="vn.edu.hcmuaf.fit.model.Product" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: Huỳnh Văn Hữu Ân
  Date: 12/4/2021
  Time: 9:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <c:import url="../import/admin/management/head.jsp"/>
    <title>Admin | Sản phẩm</title>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">
    <!-- Preloader -->
<%--    <c:import url="../import/admin/preloader.jsp"/>--%>
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
                                <table id="product" class="table table-bordered table-striped">
                                    <thead>
                                    <tr class="text-center">
                                        <th class="align-middle">STT</th>
                                        <th class="align-middle">Tên</th>
                                        <th class="align-middle">Mô tả</th>
                                        <th class="align-middle">Thương hiệu</th>
                                        <th class="align-middle">Loại</th>
                                        <th class="align-middle">Ngày tạo</th>
                                        <th class="align-middle">Ngày cập nhật</th>
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
                                    <jsp:useBean id="products" scope="request" type="java.util.List"/>
                                    <c:forEach items="${products}" var="product" varStatus="i">
                                        <tr>
                                            <td class="text-center">${i.index + 1}</td>
                                            <td>${product.name}</td>
                                            <td class="text-center">
                                                <input type="hidden" name="description" value="${product.description}"/>
                                                <a href="#" class="btn btn-info" data-toggle="modal" data-target="#description-modal" onclick="showDescription(this)">Xem mô tả</a>
                                            </td>
                                            <td class="text-center">${product.trademark.name}</td>
                                            <td class="text-center">${product.category.name}</td>
                                            <td class="text-center">
                                                <fmt:formatDate value="${product.dateCreated}" pattern="HH:mm:ss dd-MM-yyyy"/>
                                            </td>
                                            <td class="text-center">
                                                <fmt:formatDate value="${product.lastUpdated}" pattern="HH:mm:ss dd-MM-yyyy"/>
                                            </td>
                                            <c:choose>
                                                <c:when test="${product.active}">
                                                    <td class="text-center text-success">
                                                        Đang mở bán
                                                        <form id="active" action="<%=request.getContextPath()%>/admin/product?action=changeActive" method="POST" class="d-inline-block">
                                                            <button type="submit" class="btn p-1 bg-transparent text-danger"><i class="fas fa-sync-alt"></i></button>
                                                        </form>
                                                    </td>
                                                </c:when>
                                                <c:otherwise>
                                                    <td class="text-center text-danger">
                                                        Không mở bán
                                                        <form id="active" action="<%=request.getContextPath()%>/admin/product?action=changeActive" method="POST" class="d-inline-block">
                                                            <button type="submit" class="btn p-1 bg-transparent text-success"><i class="fas fa-sync-alt"></i></button>
                                                        </form>
                                                    </td>
                                                </c:otherwise>
                                            </c:choose>
                                            <td class="d-flex justify-content-center">
                                                <input type="hidden" name="id" value="${product.id}"/>
                                                <button class="btn btn-warning d-block w-100 mr-1 update" data-toggle="modal"
                                                        data-target="#update-modal" title="Cập nhật"><i class="fas fa-edit"></i></button>
                                                <button class="btn btn-danger d-block w-100 ml-1 delete" data-toggle="modal"
                                                        data-target="#delete-modal" title="Xóa"><i class="fas fa-trash-alt"></i></button>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.card-body -->
                        </div>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
            <%-- Create modal --%>
            <div class="modal fade" id="create-modal" style="display: none;" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content card card-success">
                        <div class="modal-header card-header">
                            <h5 class="modal-title font-weight-bolder">Tạo mới</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <form id="create" novalidate="novalidate">
                            <div class="modal-body card-body">
                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label>Tên sản phẩm</label>
                                            <input type="text" name="name" class="form-control" placeholder="VD: Ghế sofa cao cấp"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label>Thương hiệu</label>
                                            <select class="select2bs4" name="trademark" style="width: 100%;">
                                                <option value="">-- Chọn thương hiệu --</option>
                                                <jsp:useBean id="trademarks" scope="request" type="java.util.List"/>
                                                <c:forEach items="${trademarks}" var="trademark">
                                                    <option value="${trademark.id}">${trademark.name}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label>Loại sản phẩm</label>
                                            <select class="select2bs4" name="category" style="width: 100%;">
                                                <option value="">-- Chọn loại sản phẩm --</option>
                                                <jsp:useBean id="categories" scope="request" type="java.util.List"/>
                                                <c:forEach items="${categories}" var="category">
                                                    <option value="${category.id}">${category.name}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label>Mô tả chi tiết</label>
                                            <textarea name="description" id="description"></textarea>
                                        </div>
                                    </div>
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
                <div class="modal-dialog modal-lg">
                    <div class="modal-content card card-warning">
                        <div class="modal-header card-header">
                            <h5 class="modal-title font-weight-bolder">Cập nhật</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <form action="<%=request.getContextPath()%>/admin/product?action=update" method="POST" id="update" novalidate="novalidate">
                            <input type="hidden" name="id"/>
                            <div class="modal-body card-body">
                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label>Tên sản phẩm</label>
                                            <input type="text" name="name" class="form-control" placeholder="VD: Ghế sofa cao cấp"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label>Thương hiệu</label>
                                            <select class="select2bs4" name="trademark" style="width: 100%;">
                                                <option value="">-- Chọn thương hiệu --</option>
                                                <c:forEach items="${trademarks}" var="trademark">
                                                    <option value="${trademark.id}">${trademark.name}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label>Loại sản phẩm</label>
                                            <select class="select2bs4" name="category" style="width: 100%;">
                                                <option value="">-- Chọn loại sản phẩm --</option>
                                                <c:forEach items="${categories}" var="category">
                                                    <option value="${category.id}">${category.name}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label>Mô tả chi tiết</label>
                                            <textarea name="description-content" class="d-none"></textarea>
                                            <textarea name="description" id="description-update"></textarea>
                                        </div>
                                    </div>
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
                        <form action="<%=request.getContextPath()%>/admin/product?action=delete" method="POST" id="delete">
                            <input type="hidden" name="id"/>
                            <div class="modal-body card-body">
                                <div class="form-group">
                                    <span>Bạn có chắc muốn xóa sản phẩm này?</span>
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
            <%-- Description modal --%>
            <div class="modal fade" id="description-modal" style="top: 15%; display: none;" aria-hidden="true">
                <div class="modal-dialog modal-md">
                    <div class="modal-content card bg-gradient-info">
                        <div class="card-header">
                            <h5>Mô tả sản phẩm</h5>
                        </div>
                        <div class="modal-body card-body">
                            <div class="row">
                                <div class="col">
                                    <div class="position-relative p-3 bg-white" style="height: 180px">
                                        <%--Ribbon Default <br />--%>
                                        <h6 class="description-content text-dark"></h6>
                                    </div>
                                </div>
                            </div>
                        </div>
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
        const create$ = jQuery('#create');
        const update$ = jQuery('#update');

        // Switch
        jQuery("input[data-bootstrap-switch]").each(function(){
            jQuery(this).bootstrapSwitch('state', jQuery(this).prop('checked'));
        })

        // Summernote
        jQuery('textarea[name="description"]').summernote({
            height: 200,
            placeholder: 'Mô tả chi tiết về sản phẩm...',
        })

        // Select2
        jQuery('.select2bs4').select2({
            theme: 'bootstrap4'
        })

        // Toast
        let Toast = Swal.mixin({
            toast: true,
            position: 'top-end',
            showConfirmButton: false,
            timer: 3000
        });

        // Datatables
        jQuery("#product").DataTable({
            "responsive": true, "lengthChange": false, "autoWidth": false,
            "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"],
            "columnDefs": [
                {
                    "targets"  : 7,
                    "width": "11%"
                },
                {
                    "targets"  : 8,
                    "orderable": false,
                    "width": "10%"
                }
            ]
        }).buttons().container().appendTo('#product_wrapper .col-md-6:eq(0)');

        // Validator
        jQuery.validator.setDefaults({
            ignore: ":hidden, [contenteditable='true']:not([name])"
        });
        create$.validate({
            rules: {
                name: {
                    required: true
                },
                trademark: {
                    required: true,
                },
                category: {
                    required: true,
                }
            },
            messages: {
                name: "Vui lòng nhập tên sản phẩm",
                trademark: "Vui lòng chọn thương hiệu",
                category: "Vui lòng chọn loại sản phẩm"
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
        update$.validate({
            rules: {
                name: {
                    required: true
                },
                trademark: {
                    required: true,
                },
                category: {
                    required: true,
                }
            },
            messages: {
                name: "Vui lòng nhập tên sản phẩm",
                trademark: "Vui lòng chọn thương hiệu",
                category: "Vui lòng chọn loại sản phẩm"
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

        function refreshTrademarkList(modal) {
            $.ajax({
                type: 'GET',
                url: '<%=request.getContextPath()%>/admin/trademark?action=getAll',
                dataType: 'json',
                contentType: 'application/json',
                success: function (data) {
                    let select$ = jQuery(modal);
                    select$.html('<option value="">-- Chọn thương hiệu --</option>');
                    for (let object of data) {
                        select$.append('<option value="' + object.id + '">' + object.name + '</option>')
                    }
                }
            })
        }

        function refreshCategoryList(modal) {
            $.ajax({
                type: 'GET',
                url: '<%=request.getContextPath()%>/admin/category?action=getAll',
                dataType: 'json',
                contentType: 'application/json',
                success: function (data) {
                    let select$ = jQuery(modal);
                    select$.html('<option value="">-- Chọn thể loại --</option>');
                    for (let object of data) {
                        select$.append('<option value="' + object.id + '">' + object.name + '</option>')
                    }
                }
            })
        }

        function setNewRow(result) {
            let numberOfRecord = jQuery('table#product tbody tr').length;

            let active = result.active ? '<td class="text-center text-success">Đang mở bán</td>' : '<td class="text-center text-danger">Không mở bán</td>';
            return '<tr>' +
                    '<td class="text-center">' + ++numberOfRecord + '</td>' +
                    '<td>' + result.name + '</td>' +
                    '<td class="text-center">' +
                        '<input type="hidden" name="description" value="' + result.description + '"/>' +
                        '<a href="#" class="btn btn-info" data-toggle="modal" data-target="#description-modal" onclick="showDescription(this)">Xem mô tả</a>' +
                    '</td>' +
                    '<td class="text-center">' + result.trademark.name + '</td>' +
                    '<td class="text-center">' + result.category.name + '</td>' +
                    '<td class="text-center">' + $.format.date(result.dateCreated, 'HH:mm:ss dd-MM-yyyy') + '</td>' +
                    '<td class="text-center">' + $.format.date(result.lastUpdated, 'HH:mm:ss dd-MM-yyyy') + '</td>' +
                    active +
                    '<td class="d-flex justify-content-center">' +
                        '<input type="hidden" name="id" value="' + result.id + '"/>' +
                        '<button class="btn btn-warning d-block w-100 mr-1 update" ' +
                            'data-toggle="modal" data-target="#update-modal" title="Cập nhật"><i class="fas fa-edit"></i></button>' +
                        '<button class="btn btn-danger d-block w-100 ml-1 delete" data-toggle="modal" ' +
                            'data-target="#delete-modal" title="Xóa"><i class="fas fa-trash-alt"></i></button>' +
                    '</td>' +
                '</tr>';
        }

        jQuery('input').keyup(function () {
            jQuery(this).valid();
        })

        jQuery('select').change(function () {
            jQuery(this).valid();
        })

        // Submit form
        create$.submit(function () {
            if (create$.valid()) {
                // Get data
                let data;
                let name = jQuery(this).find('input[name="name"]').val();
                let trademark = jQuery(this).find('select[name="trademark"]').val();
                let category = jQuery(this).find('select[name="category"]').val();
                let description = jQuery(this).find('textarea[name="description"]').val();
                if (description === "") data = { 'name': name, 'trademark': trademark, 'category': category, 'description': '<p></p>' }
                    else data = { 'name': name, 'trademark': trademark, 'category': category, 'description': description }

                // Send data
                $.ajax({
                    type: 'POST',
                    url: '<%=request.getContextPath()%>/admin/product?action=create',
                    data: data,
                    success: function (result) {
                        jQuery('#create-modal .close').click();
                        jQuery(this).find('input[name="name"]').val("");
                        refreshTrademarkList('#create select[name="trademark"]');
                        refreshCategoryList('#create select[name="category"]');
                        jQuery('textarea[name="description"]').summernote("reset");
                        Toast.fire({
                            icon: 'success',
                            title: 'Hoàn tất. Tạo sản phẩm thành công'
                        })
                        jQuery('table#product tbody').append(setNewRow(result));
                    },
                    error: function () {
                        Toast.fire({
                            icon: 'error',
                            title: 'Lỗi. Tạo sản phẩm không thành công.'
                        })
                    }
                })
            }
            return false;
        })
        update$.submit(function () {
            console.log(jQuery(this).find('textarea[name="description"]').summernote('code'));
            return false;
            //jQuery(this).find('textarea[name="description-content"]').val();
        })

        // Popup modal action
        jQuery('.delete').on('click', function() {
            let id = jQuery(this).parent().find('input[name="id"]').val();
            jQuery('#delete-modal input[name = "id"]').val(id);
        });
        jQuery('.update').on('click', function() {
            let id = jQuery(this).parent().find('input[name="id"]').val();
            console.log(id);
            $.ajax({
                type: "GET",
                url: '<%=request.getContextPath()%>/admin/product?action=get',
                data: { id: id },
                dataType: "json",
                contentType: "application/json",
                success: function (data) {
                    jQuery('#update-modal input[name="id"]').val(data.id);
                    jQuery('#update-modal input[name="name"]').val(data.name);
                    jQuery('#update-modal select[name="trademark"]').val(data.trademark.id).trigger('change');
                    jQuery('#update-modal select[name="category"]').val(data.category.id).trigger('change');
                    jQuery('#update-modal textarea[name="description"]').summernote('code', data.description);
                }
            })
        });
    });
</script>
<script>
    // Show description
    function showDescription(e) {
        let description = jQuery(e).parent().find('input[name="description"]').val();
        jQuery('.description-content').html(description);
    }
</script>
</body>
</html>

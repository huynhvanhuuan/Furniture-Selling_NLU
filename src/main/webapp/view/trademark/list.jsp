<%@ page import="vn.edu.hcmuaf.fit.dto.Address" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <c:import url="../import/admin/data/head.jsp"/>
    <title>Quản lý | Thương hiệu</title>
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
                                <table id="trademark" class="table table-bordered table-striped">
                                    <thead>
                                    <tr class="text-center">
                                        <th class="align-middle">STT</th>
                                        <th class="align-middle">Tên thương hiệu</th>
                                        <th class="align-middle">Địa chỉ</th>
                                        <th class="align-middle">Website</th>
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
                                    <jsp:useBean id="trademarks" scope="request" type="java.util.List"/>
                                    <c:forEach items="${trademarks}" var="trademark" varStatus="i">
                                        <tr>
                                            <td class="text-center align-middle"><c:out value="${i.index + 1}"/></td>
                                            <td class="align-middle"><c:out value="${trademark.name}"/></td>
                                            <td class="align-middle">
                                                <ul>
                                                    <c:forEach items="${trademark.addresses}" var="address">
                                                        <li><c:out value="${address.path}"/></li>
                                                    </c:forEach>
                                                </ul>
                                            </td>
                                            <td class="align-middle"><c:out value="${trademark.website}"/></td>
                                            <td class="d-flex justify-content-center">
                                                <input type="hidden" name="id" value="<c:out value="${trademark.id}"/>"/>
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
                        <form action="<%=request.getContextPath()%>/trademark/create" method="POST" id="create" novalidate="novalidate">
                            <div class="modal-body card-body">
                                <div class="form-group">
                                    <label>Tên thương hiệu</label>
                                    <input type="text" name="name" class="form-control" placeholder="VD: LTW"/>
                                </div>
                                <div class="form-group address">
                                    <fieldset style="border: 1px solid #ced4da; padding: 0 8px 8px;">
                                        <style>
                                            legend {
                                                width:auto;
                                                font-size: 1rem;
                                                border-radius: 0.25rem;
                                                font-weight: bolder;
                                            }
                                        </style>
                                        <legend>
                                            <span>Địa chỉ</span>
                                        </legend>
                                        <div class="row">
                                            <div class="col">
                                                <div class="form-group">
                                                    <select class="select2bs4" name="province" style="width: 100%;">
                                                        <option value="">Tỉnh / Thành phố</option>
                                                        <jsp:useBean id="provinces" scope="request" type="java.util.List"/>
                                                        <c:forEach items="${provinces}" var="province">
                                                            <option value="<c:out value="${province.id}"/>">
                                                                <c:out value="${province.prefix}"/> <c:out value="${province.name}"/>
                                                            </option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col">
                                                <div class="form-group">
                                                    <select class="select2bs4" name="district" style="width: 100%;">
                                                        <option value="">Quận / Huyện</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col">
                                                <div class="form-group">
                                                    <select class="select2bs4" name="ward" style="width: 100%;">
                                                        <option value="">Phường / Xã</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-4">
                                                <div class="form-group">
                                                    <input type="text" name="street" class="form-control" placeholder="Đường. VD: Đường số 1"/>
                                                </div>
                                            </div>
                                            <div class="col-4">
                                                <div class="form-group">
                                                    <input type="text" name="number" class="form-control" placeholder="Số nhà, lô, kios,..."/>
                                                </div>
                                            </div>
                                        </div>
                                        <label class="mb-0 mt-3">Hiển thị: <span id="address"></span></label>
                                    </fieldset>
                                </div>
                                <button type="button" class="btn btn-default"><i class="fab fa-plus"></i></button> <span>Add more address</span>
                                <div class="form-group">
                                    <label>Website</label>
                                    <input type="text" name="website" class="form-control" placeholder="VD: https://ltw.com/"/>
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
                        <form action="<%=request.getContextPath()%>/trademark/update" method="POST" id="update" novalidate="novalidate">
                            <input type="hidden" name="id"/>
                            <div class="modal-body card-body">
                                <div class="form-group">
                                    <label>Tên thương hiệu</label>
                                    <input type="text" name="name-update" class="form-control" placeholder="VD: LTW"/>
                                </div>
                                <div class="form-group">
                                    <label>Địa chỉ</label>
                                    <div class="row">
                                        <div class="col">
                                            <div class="form-group">
                                                <select class="select2bs4" name="province-update" onchange="getDistrictList(this);" style="width: 100%;">
                                                    <option value="0">Tỉnh / Thành phố</option>
                                                    <c:forEach items="${provinces}" var="province">
                                                        <option value="<c:out value="${province.id}"/>">
                                                            <c:out value="${province.name}"/>
                                                        </option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group">
                                                <select class="select2bs4" name="district-update" onchange="getWardList(this);" style="width: 100%;">
                                                    <option value="0">Quận / Huyện</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group">
                                                <select class="select2bs4" name="ward-update" style="width: 100%;">
                                                    <option value="0">Phường / Xã</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-4">
                                            <input type="text" name="street-update" class="form-control" placeholder="Đường"/>
                                        </div>
                                        <div class="col-2">
                                            <input type="text" name="number-update" class="form-control" placeholder="Số nhà, kios, lô,..."/>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Website</label>
                                    <input type="text" name="website-update" class="form-control" placeholder="VD: https://ltw.com/"/>
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
                        <form action="<%=request.getContextPath()%>/trademark/delete" method="POST">
                            <input type="hidden" name="id"/>
                            <div class="modal-body card-body">
                                <div class="form-group">
                                    <span>Bạn có chắc muốn xóa thương hiệu này?</span>
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
<c:import url="../import/admin/data/script.jsp"/>
<!-- Page specific script -->
<script>
    const province$ = jQuery('select[name = "province"]');
    const district$ = jQuery('select[name = "district"]');
    const ward$ = jQuery('select[name = "ward"]');
    const street$ = jQuery('input[name = "street"]');
    const number$ = jQuery('input[name = "number"]');

    let address = {
        number: null,
        street: null,
        ward: null,
        district: null,
        province: null,
    };

    function showAddress() {
        let str;
        if (address.province == null) str = "";
        else if (address.district == null) str = address.province;
        else if (address.ward == null) str = address.district + ', ' + address.province;
        else if (address.street == null)
            if (address.ward === "") str = address.district + ', ' + address.province;
            else str = address.ward + ', ' + address.district + ', ' + address.province;
        else if (address.number == null)
            if (address.ward === "") str = address.street + ', ' + address.district + ', ' + address.province;
            else str = address.street + ', ' + address.ward + ', ' + address.district + ', ' + address.province;
        else if (address.ward === "") str = address.number + ', ' + address.street + ', ' + address.district + ', ' + address.province;
        else str = address.number + ', ' + address.street + ', ' + address.ward + ', ' + address.district + ', ' + address.province;
        jQuery('#address').text(str);
    }

    /* Get district list */
    function getDistrictList(select) {
        $.ajax({
            type: "GET",
            url: '<%=request.getContextPath()%>/api/province',
            data: { id: select.value },
            dataType: "json",
            contentType: "application/json",
            success: function (data) {
                resetSelect("select[name = 'district']", data);
                resetSelect("select[name = 'ward']", []);
                address.district = null;
                address.ward = null;
                showAddress();
                district$.valid();
                ward$.valid();
                street$.valid();
                number$.valid();
            }
        })
    }

    /* Get ward list */
    function getWardList(select) {
        $.ajax({
            type: "GET",
            url: '<%=request.getContextPath()%>/api/district',
            data: { id: select.value },
            dataType: "json",
            contentType: "application/json",
            success: function (data) {
                resetSelect("select[name = 'ward']", data);
                if (data.length === 0) {
                    address.ward = "";
                    jQuery('select[name = "ward"]').rules("remove", "min");
                    jQuery('input[name = "number"]').rules("remove", "required");
                } else {
                    address.ward = null;
                    jQuery('select[name = "ward"]').rules("add", {
                        min: '1',
                        messages: {
                            min: "Vui lòng chọn phường, xã"
                        }
                    });
                    jQuery('input[name = "number"]').rules("add", {
                        required: true,
                        messages: {
                            required: "Vui lòng nhập số nhà, lô, kios,.."
                        }
                    });
                }
                ward$.valid();
                street$.valid();
                number$.valid();
                showAddress();
            }
        })
    }

    function resetSelect(selector, data) {
        let select$ = jQuery(selector);
        select$.find('option').remove();
        if (select$.attr('name') === 'district') select$.append('<option value="0">Quận / Huyện</option>');
        else select$.append('<option value="0">Phường / Xã</option>');
        for (let object of data) {
            let str = '<option class="' + select$.attr('name') + '" value="' + object.id + '">' + object.prefix + ' ' + object.name + '</option>';
            select$.append(str);
        }
    }

    /* Address mapping */
    province$.change(function() {
        let province = province$.find('option:selected');
        if (province.val() === '') {
            address.province = null;
            address.district = null;
            address.ward = null;
            province.val(0);
        } else if (address.province !== province.text()) {
            address.province = province.text();
            province$.valid();
            address.district = null;
            address.ward = null;
        }
        getDistrictList(this);
    })
    district$.change(function() {
        let district = district$.find('option:selected');
        if (district.val() === '') {
            address.district = null;
            address.ward = null;
            district.val(0)
        } else if (address.district !== district.text()) {
            address.district = district.text();
            district$.valid();
        }
        getWardList(this);
    })
    ward$.change(function() {
        let ward = ward$.find('option:selected');
        if (ward.val() === '') {
            address.ward = null;
            ward.val(0);
        } else {
            address.ward = ward.text();
            ward$.valid();
        }
        showAddress();
    })
    street$.keyup(function() {
        address.street = street$.val() !== "" ? street$.val() : null;
        showAddress();
    })
    number$.keyup(function() {
        address.number = number$.val() !== "" ? number$.val() : null;
        showAddress();
    })

    jQuery(function () {
        jQuery('.select2bs4').select2({
            theme: 'bootstrap4'
        })
        jQuery("#trademark").DataTable({
            "responsive": true, "lengthChange": false, "autoWidth": false,
            "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"],
            "columnDefs": [{
                "targets"  : 4,
                "orderable": false,
                "width": "15%"
            }]
        }).buttons().container().appendTo('#trademark_wrapper .col-md-6:eq(0)');
        jQuery('#create').validate({
            rules: {
                name: {
                    required: true,
                },
                province: {
                    required: true,
                    min: '1'
                },
                district: {
                    required: true,
                    min: '1'
                },
                ward: {
                    required: true,
                    min: '1'
                },
                street: {
                    required: true
                },
                number: {
                    required: true
                }
            },
            messages: {
                name: "Vui lòng nhập tên thương hiệu",
                province: "Vui lòng chọn tỉnh, thành phố",
                district: "Vui lòng chọn quận, huyện",
                ward: "Vui lòng chọn phường, xã",
                street: "Vui lòng nhập tên đường",
                number: "Vui lòng nhập số nhà, lô, kios,.."
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
                name: {
                    required: true
                },
                province: {
                    required: true,

                },
                district: {
                    required: true
                },
                ward: {
                    required: true
                },
                street: {
                    required: true
                },
                number: {
                    required: true
                }
            },
            messages: {
                name: "Vui lòng nhập tên thương hiệu",
                province: "Vui lòng chọn tỉnh, thành phố",
                district: "Vui lòng chọn quận, huyện",
                ward: "Vui lòng chọn phường, xã",
                street: "Vui lòng nhập tên đường",
                number: "Vui lòng nhập số nhà, lô, kios,.."
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
            let id = jQuery(this).parent().find('input[name = "id"]').val();
            jQuery('#delete-modal input[name = "id"]').val(id);
        });
        jQuery('.update').on('click', function() {
            let id = jQuery(this).parent().find('input[name = "id"]').val();
            $.ajax({
                type: "GET",
                url: '<%=request.getContextPath()%>/trademark/get',
                data: { id: id },
                dataType: "json",
                contentType: "application/json",
                success: function (data) {
                    jQuery('#update-modal input[name = "id"]').val(data.id);
                    jQuery('#update-modal input[name = "name"]').val(data.name);
                    jQuery('#update-modal input[name = "address"]').val(data.name);
                    jQuery('#update-modal input[name = "website"]').val(data.name);
                }
            })
        });
    });
</script>
</body>
</html>

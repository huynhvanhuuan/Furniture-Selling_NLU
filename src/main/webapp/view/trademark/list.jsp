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
                                            <td class="text-center"><c:out value="${i.index + 1}"/></td>
                                            <td><c:out value="${trademark.name}"/></td>
                                            <td>
                                                <ul style="list-style-type: none; padding: 0">
                                                    <c:forEach items="${trademark.addresses}" var="address">
                                                        <li>
                                                            <a href="#" class="text-danger mr-2 address-remove" title="Xóa địa chỉ" onclick="removeAddress(<c:out value='${address.id}'/>)">
                                                                <i class="fas fa-minus-square"></i>
                                                            </a>
                                                            <c:out value="${address.path}"/>
                                                        </li>
                                                    </c:forEach>
                                                    <li>
                                                        <a href="" data-toggle="modal" data-target="#add-address-modal" title="Thêm địa chỉ" onclick="addAddress()">
                                                            <i class="fas fa-plus-square"></i>
                                                        </a>
                                                        <input type="hidden" name="id" value="<c:out value="${trademark.id}"/>"/>
                                                    </li>
                                                </ul>
                                            </td>
                                            <td><c:out value="${trademark.website}"/></td>
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
                                <%--<div class="form-group">
                                    <label>Địa chỉ</label>&ensp;
                                    <button type="button" class="btn btn-outline-info" data-toggle="modal" data-target="#add-address-modal"
                                            onclick="addAddress()">
                                        Nhấn để thêm
                                    </button>
                                    <input type="hidden" name="address-count" value="0"><br>
                                    <span class="address-error text-danger" style="display: none;">Vui lòng thêm ít nhất 1 địa chỉ</span>
                                    <ul class="add-address-list"></ul>
                                </div>--%>
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
                                    <input type="text" name="name" class="form-control" placeholder="VD: LTW"/>
                                </div>
                                <%--<div class="form-group">
                                    <label>Địa chỉ</label>&ensp;
                                    <button type="button" class="btn btn-outline-info" data-toggle="modal" data-target="#add-address-modal"
                                            onclick="addAddress()">
                                        Nhấn để thêm
                                    </button>
                                    <input type="hidden" name="address-count" value="0"><br>
                                    <span class="address-error text-danger" style="display: none;">Vui lòng thêm ít nhất 1 địa chỉ</span>
                                    <ul class="add-address-list"></ul>
                                </div>--%>
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
            <!-- Add address modal -->
            <div class="modal fade" id="add-address-modal" style="display: none;" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content card card-success">
                        <div class="modal-header card-header">
                            <h5 class="modal-title font-weight-bolder">Thêm địa chỉ</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <form id="add-address" novalidate="novalidate">
                            <div class="modal-body card-body">
                                <div class="form-group address">
                                    <div class="row">
                                        <div class="col">
                                            <div class="form-group">
                                                <select class="select2bs4" name="province" style="width: 100%;" autocomplete="on">
                                                    <option value="">Tỉnh / Thành phố</option>
                                                    <jsp:useBean id="provinces" scope="request" type="java.util.List"/>
                                                    <c:forEach items="${provinces}" var="province">
                                                        <option value="<c:out value="${province.id}"/>"><c:out value="${province.prefix}"/> <c:out value="${province.name}"/></option>
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
                                    <label class="mb-0 mt-3">Hiển thị: <span id="add-address-title"></span></label>
                                </div>
                            </div>
                            <div class="modal-footer justify-content-between">
                                <button type="button" class="btn btn-danger font-weight-bolder" data-dismiss="modal">Hủy</button>
                                <button type="button" class="btn btn-primary font-weight-bolder" id="add">Thêm</button>
                            </div>
                        </form>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->
            <!-- Update address modal -->
            <div class="modal fade" id="update-address-modal" style="display: none;" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content card card-success">
                        <div class="modal-header card-header">
                            <h5 class="modal-title font-weight-bolder">Thêm địa chỉ</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <form action="<%=request.getContextPath()%>/trademark/update-address" method="POST" id="update-address" novalidate="novalidate">
                            <div class="modal-body card-body">
                                <div class="form-group address">
                                    <div class="row">
                                        <div class="col">
                                            <div class="form-group">
                                                <select class="select2bs4" name="province-update" style="width: 100%;">
                                                    <option value="">Tỉnh / Thành phố</option>
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
                                                <select class="select2bs4" name="district-update" style="width: 100%;">
                                                    <option value="">Quận / Huyện</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group">
                                                <select class="select2bs4" name="ward-update" style="width: 100%;">
                                                    <option value="">Phường / Xã</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-4">
                                            <div class="form-group">
                                                <input type="text" name="street-update" class="form-control" placeholder="Đường. VD: Đường số 1"/>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="form-group">
                                                <input type="text" name="number-update" class="form-control" placeholder="Số nhà, lô, kios,..."/>
                                            </div>
                                        </div>
                                    </div>
                                    <label class="mb-0 mt-3">Hiển thị: <span id="update-address-title"></span></label>
                                </div>
                            </div>
                            <div class="modal-footer justify-content-between">
                                <button type="button" class="btn btn-danger font-weight-bolder" data-dismiss="modal">Hủy</button>
                                <button type="submit" class="btn btn-primary font-weight-bolder">Thêm</button>
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
    }
    let addressTitle$;

    function addAddress() {
        addressTitle$ = jQuery('#add-address-title');
    }

    function updateAddress() {}

    function getAddress() {
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
        return str;
    }

    function showAddress() {
        addressTitle$.text(getAddress());
    }

    function removeAddress(id) {
        $.ajax({
            type: "DELETE",
            url: '<%=request.getContextPath()%>/trademark/remove-address?id=' + id,
            success: function() {
                alert('Address removed successfully!');
            }
        })
    }

    jQuery('.address-remove').click(function () {
        jQuery(this).parent().closest('li').remove();
    })

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
                console.log(data.length);
                if (data.length === 0) {
                    address.ward = "";
                    jQuery('select[name = "ward"]').rules("remove", "required");
                    jQuery('input[name = "number"]').rules("remove", "required");
                } else {
                    address.ward = null;
                    jQuery('select[name = "ward"]').rules("add", {
                        required: true,
                        messages: {
                            required: "Vui lòng chọn phường, xã"
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
        if (select$.attr('name') === 'district') select$.append('<option value="">Quận / Huyện</option>');
        else select$.append('<option value="">Phường / Xã</option>');
        for (let object of data) {
            let str;
            if (object.prefix === '') {
                str = '<option value="' + object.id + '">' + object.name + '</option>';
            } else {
                str = '<option value="' + object.id + '">' + object.prefix + ' ' + object.name + '</option>';
            }
            select$.append(str);
        }
    }

    /* Address mapping */
    province$.change(function() {
        let province = jQuery(this).find('option:selected');
        if (province.val() === '') {
            address.province = null;
            address.district = null;
            address.ward = null;
            province.val(0);
        } else if (address.province !== province.text()) {
            address.province = province.text();
            jQuery(this).valid();
            address.district = null;
            address.ward = null;
        }
        getDistrictList(this);
    })
    district$.change(function() {
        let district = jQuery(this).find('option:selected');
        if (district.val() === '') {
            address.district = null;
            address.ward = null;
            district.val(0)
        } else if (address.district !== district.text()) {
            address.district = district.text();
            jQuery(this).valid();
        }
        getWardList(this);
    })
    ward$.change(function() {
        let ward = jQuery(this).find('option:selected');
        if (ward.val() === '') {
            address.ward = null;
            ward.val(0);
        } else {
            address.ward = ward.text();
            jQuery(this).valid();
        }
        showAddress();
    })
    street$.keyup(function() {
        address.street = jQuery(this).val().trim() !== "" ? jQuery(this).val().trim() : null;
        showAddress();
    })
    number$.keyup(function() {
        address.number = jQuery(this).val().trim() !== "" ? jQuery(this).val().trim() : null;
        showAddress();
    })

    jQuery(function () {
        /* Create theme bootstrap for select2 */
        jQuery('.select2bs4').select2({
            theme: 'bootstrap4'
        })

        /* Setup datatables */
        jQuery("#trademark").DataTable({
            "responsive": true, "lengthChange": false, "autoWidth": false,
            "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"],
            "columnDefs": [{
                "targets"  : 4,
                "orderable": false,
                "width": "15%"
            }]
        }).buttons().container().appendTo('#trademark_wrapper .col-md-6:eq(0)');

        /* Create address validation function */
        jQuery('#add-address').validate({
            rules: {
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
        })

        /* Update Address validation function */
        jQuery('#update-address').validate({
            rules: {
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
        })

        /* Create trademark validation function */
        jQuery('#create').validate({
            rules: {
                name: {
                    required: true,
                }
            },
            messages: {
                name: "Vui lòng nhập tên thương hiệu"
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

        /* Update trademark validtion function */
        jQuery('#update').validate({
            rules: {
                name: {
                    required: true,
                }
            },
            messages: {
                name: "Vui lòng nhập tên thương hiệu"
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

        /* Add address function */
        jQuery('#add').on('click', function() {
            // Get values
            let districtId = jQuery(this).closest('#add-address').find('select[name = "district"]').val();
            let wardId = jQuery(this).closest('#add-address').find('select[name = "ward"]').val();
            let street = jQuery(this).closest('#add-address').find('input[name = "street"]').val();
            let number = jQuery(this).closest('#add-address').find('input[name = "number"]').val();
            if (jQuery('#add-address').valid()) { // Check values valid
                // Check existed
                $.ajax({
                    type: "GET",
                    url: '<%=request.getContextPath()%>/api/address?action=checkExistWithPath&path=' + getAddress(),
                    data: {},
                    dataType: "json",
                    contentType: "application/json",
                    success: function(data) {
                        // If not exist then add, otherwise alert
                        if (data != null) {
                            alert('Địa chỉ đã được thêm');
                            return false;
                        } else {
                            let url;
                            if (wardId === "") {
                                if (number === "") {
                                    url = '<%=request.getContextPath()%>/api/address?action=create&districtId=' +
                                        districtId + '&street=' + street;
                                } else {
                                    url = '<%=request.getContextPath()%>/api/address?action=create&districtId=' +
                                        districtId + '&street=' + street + '&number=' + number;
                                }
                            } else {
                                url = '<%=request.getContextPath()%>/api/address?action=create&districtId=' +
                                    districtId + '&wardId=' + wardId + '&street=' + street + '&number=' + number;
                            }
                            $.ajax({
                                type: "POST",
                                url: url,
                                data: {},
                                contentType: "text/plain",
                                success: function() {
                                    jQuery('#add-address-modal button.close').click();
                                    let currentModel$ = jQuery('.modal.show');
                                    currentModel$.find('.add-address-list').append('<li class="address">' +
                                        '<input type="text" class="border-0 bg-transparent w-75" name="address" value="' + getAddress() + '" disabled>' +
                                        '<a href="#" class="text-danger" onclick="removeAddress(jQuery(this).find(' + "'" + 'input' + "'" + ').val());">' +
                                        '<i class="fas fa-minus-square" title="Remove address"></i></a>' +
                                        '</li>');
                                    let addressCount$ = currentModel$.find('input[name = "address-count"]');
                                    let error$ = currentModel$.find('.address-error');
                                    let count = +addressCount$.val();
                                    addressCount$.val(++count);
                                    if (error$.hasClass('show')) {
                                        error$.hide();
                                    }
                                }
                            });
                        }
                    }
                })
            }
        })

        /* Delete trademark function */
        jQuery('.delete').on('click', function() {
            let id = jQuery(this).parent().find('input[name = "id"]').val();
            jQuery('#delete-modal input[name = "id"]').val(id);
        });

        /* Update trademark function */
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
                    jQuery('#update-modal input[name = "website"]').val(data.website);
                }
            })
        });
    });
</script>
</body>
</html>

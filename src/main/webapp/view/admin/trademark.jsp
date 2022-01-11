<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <c:import url="../import/admin/management/head.jsp"/>
    <title>Quản lý | Thương hiệu</title>
</head>
<body class="hold-transition sidebar-mini layout-fixed layout-footer-fixed layout-navbar-fixed">
<div class="wrapper">
    <c:import url="../import/admin/navbar.jsp"/>
    <c:import url="../import/admin/sidebar.jsp"/>
    <div class="content-wrapper">
        <c:import url="../import/admin/header.jsp"/>
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
                                                            <input type="hidden" name="addressId" value="${address.id}">
                                                            <a href="" class="text-danger mr-2 address-delete" title="Xóa địa chỉ" data-toggle="modal" data-target="#delete-address-modal">
                                                                <i class="fas fa-minus-square"></i>
                                                            </a>
                                                            <a href="" class="text-info mr-2 address-update" title="Sửa địa chỉ" onclick="updateAddress()"
                                                               data-toggle="modal" data-target="#update-address-modal">
                                                                <i class="fas fa-pen-square"></i>
                                                            </a>
                                                            <c:out value="${address.path}"/>
                                                        </li>
                                                    </c:forEach>
                                                    <li>
                                                        <a href="" data-toggle="modal" data-target="#add-address-modal" title="Thêm địa chỉ" onclick="addAddress(this)">
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
                        </div>
                    </div>
                </div>
            </div>
            <!-- Create modal -->
            <div class="modal fade" id="create-modal" style="display: none;" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content card card-success">
                        <div class="modal-header card-header">
                            <h5 class="modal-title font-weight-bolder">Tạo mới</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <form action="${pageContext.request.contextPath}/admin/trademark?action=create" method="POST" id="create" novalidate="novalidate">
                            <div class="modal-body card-body">
                                <div class="form-group">
                                    <label>Tên thương hiệu</label>
                                    <input type="text" name="name" class="form-control" placeholder="VD: LTW"/>
                                </div>
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
                </div>
            </div>
            <!-- Update modal -->
            <div class="modal fade" id="update-modal" style="display: none;" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content card card-warning">
                        <div class="modal-header card-header">
                            <h5 class="modal-title font-weight-bolder">Cập nhật</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <form action="<%=request.getContextPath()%>/admin/trademark?action=update" method="POST" id="update" novalidate="novalidate">
                            <input type="hidden" name="id"/>
                            <div class="modal-body card-body">
                                <div class="form-group">
                                    <label>Tên thương hiệu</label>
                                    <input type="text" name="name" class="form-control" placeholder="VD: LTW"/>
                                </div>
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
                </div>
            </div>
            <!-- Delete modal -->
            <div class="modal fade" id="delete-modal" style="display: none;" aria-hidden="true">
                <div class="modal-dialog modal-sm">
                    <div class="modal-content card card-danger">
                        <div class="modal-header card-header">
                            <h5 class="modal-title font-weight-bolder">Xác nhận xóa</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <form action="<%=request.getContextPath()%>/admin/trademark?action=delete" method="POST">
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
                </div>
            </div>
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
                        <form action="<%=request.getContextPath()%>/admin/address?action=create&url=%2Fadmin%2Ftrademark" method="POST" id="add-address" novalidate="novalidate">
                            <input type="hidden" name="trademarkId">
                            <div class="modal-body card-body">
                                <div class="form-group address">
                                    <div class="row">
                                        <div class="col">
                                            <div class="form-group">
                                                <select class="select2bs4" name="province" style="width: 100%;">
                                                    <option value="0">Tỉnh / Thành phố</option>
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
                                                    <option value="0">Quận / Huyện</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group">
                                                <select class="select2bs4" name="ward" style="width: 100%;">
                                                    <option value="0">Phường / Xã</option>
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
                                <button type="submit" class="btn btn-primary font-weight-bolder">Thêm</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
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
                        <form action="<%=request.getContextPath()%>/admin/address?action=update&url=%2Fadmin%2Ftrademark" method="POST" id="update-address" novalidate="novalidate">
                            <input type="hidden" name="id">
                            <div class="modal-body card-body">
                                <div class="form-group address">
                                    <div class="row">
                                        <div class="col">
                                            <div class="form-group">
                                                <select class="select2bs4" name="province" style="width: 100%;">
                                                    <option value="0">Tỉnh / Thành phố</option>
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
                                                    <option value="0">Quận / Huyện</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group">
                                                <select class="select2bs4" name="ward" style="width: 100%;">
                                                    <option value="0">Phường / Xã</option>
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
                                    <label class="mb-0 mt-3">Hiển thị: <span id="update-address-title"></span></label>
                                </div>
                            </div>
                            <div class="modal-footer justify-content-between">
                                <button type="button" class="btn btn-danger font-weight-bolder" data-dismiss="modal">Hủy</button>
                                <button type="submit" class="btn btn-primary font-weight-bolder">Cập nhật</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- Delete address modal -->
            <div class="modal fade" id="delete-address-modal" style="display: none;" aria-hidden="true">
                <div class="modal-dialog modal-sm">
                    <div class="modal-content card card-danger">
                        <div class="modal-header card-header">
                            <h5 class="modal-title font-weight-bolder">Xác nhận xóa</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <form action="<%=request.getContextPath()%>/admin/address?action=delete&url=%2Fadmin%2Ftrademark" method="POST">
                            <input type="hidden" name="id"/>
                            <div class="modal-body card-body">
                                <div class="form-group">
                                    <span>Bạn có chắc muốn xóa địa chỉ này?</span>
                                </div>
                            </div>
                            <div class="modal-footer justify-content-between">
                                <button type="button" class="btn btn-danger font-weight-bolder" data-dismiss="modal">Hủy</button>
                                <button type="submit" class="btn btn-primary font-weight-bolder">Đồng ý</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <c:import url="../import/admin/footer.jsp"/>
    <aside class="control-sidebar control-sidebar-dark"></aside>
</div>
<c:import url="../import/admin/management/script.jsp"/>
<script>
    const province$ = jQuery('select[name = "province"]');
    const district$ = jQuery('select[name = "district"]');
    const ward$ = jQuery('select[name = "ward"]');
    const street$ = jQuery('input[name = "street"]');
    const number$ = jQuery('input[name = "number"]');
    let addressTitle$;
    let address = {
        number: null,
        street: null,
        ward: null,
        district: null,
        province: null,
    }

    function addAddress(element) {
        let trademarkId = jQuery(element).next('input').val();
        jQuery('#add-address input[name="trademarkId"]').val(trademarkId);
        addressTitle$ = jQuery('#add-address-title');
    }

    function updateAddress() {
        addressTitle$ = jQuery('#update-address-title');
    }

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

    <%--function removeAddress(id) {--%>
    <%--    $.ajax({--%>
    <%--        type: "POST",--%>
    <%--        url: '<%=request.getContextPath()%>/admin/address?action=delete?id=' + id,--%>
    <%--        success: function() {--%>
    <%--            alert('Address removed successfully!');--%>
    <%--        }--%>
    <%--    })--%>
    <%--}--%>

    /*jQuery('.address-remove').click(function () {
        jQuery(this).parent().closest('li').remove();
    })*/
    function getDistrictList(id) {
        $.ajax({
            type: "GET",
            url: '<%=request.getContextPath()%>/admin/address?action=getDistrictList',
            data: { id: id },
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
    function getWardList(id) {
        $.ajax({
            type: "GET",
            url: '<%=request.getContextPath()%>/admin/address?action=getWardList',
            data: { id: id },
            dataType: "json",
            contentType: "application/json",
            success: function (data) {
                resetSelect("select[name = 'ward']", data);
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
        if (jQuery(this).val() !== 0) {
            getDistrictList(jQuery(this).val());
        }
    })
    district$.change(function() {
        let district = jQuery(this).find('option:selected');
        if (district.val() === '') {
            address.district = null;
            address.ward = null;
            district.val(0);
        } else if (address.district !== district.text()) {
            address.district = district.text();
            jQuery(this).valid();
        }
        if (jQuery(this).val() !== 0) {
            getWardList(jQuery(this).val());
        }
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
</script>
<script>
    jQuery(function () {
        const create$ = jQuery('#create');
        const update$ = jQuery('#update');
        const addAddress$ = jQuery('#add-address');
        const updateAddress$ = jQuery('#update-address');

        jQuery(".modal").on('hide.bs.modal', function() {
            jQuery(':input', 'form')
                .not(':button, :submit, :reset, :hidden')
                .val('')
                .prop('checked', false)
                .prop('selected', false);
            createValidate.resetForm();
            updateValidate.resetForm();
            addAddressValidate.resetForm();
            updateAddressValidate.resetForm();

        });

        // Select2
        jQuery('.select2bs4').select2({
            theme: 'bootstrap4'
        })

        // Datatables
        jQuery("#trademark").DataTable({
            "responsive": true, "lengthChange": false, "autoWidth": false, "pageLength": 7,
            "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"],
            "columnDefs": [
                {
                    "targets" : 0,
                    "width" : "5%"
                },
                {
                    "targets" : 1,
                    "width" : "15%"
                },
                {
                    "targets" : 2,
                    "width" : "45%"
                },
                {
                    "targets" : 3,
                    "width" : "20%"
                },
                {
                    "targets" : 4,
                    "orderable" : false,
                    "width" : "15%"
                }
            ],
            "drawCallback": function () {
                jQuery('.delete').on('click', function() {
                    let id = jQuery(this).parent().find('input[name = "id"]').val();
                    jQuery('#delete-modal input[name = "id"]').val(id);
                });
                jQuery('.update').on('click', function() {
                    let id = jQuery(this).parent().find('input[name = "id"]').val();
                    $.ajax({
                        type: "GET",
                        url: '<%=request.getContextPath()%>/admin/trademark?action=get',
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
                jQuery('.address-delete').on('click', function() {
                    let id = jQuery(this).parent().find('input[name="id"]').val();
                    jQuery('#delete-address-modal input[name ="id"]').val(id);
                });
                jQuery('.address-update').on('click', function() {
                    let id = jQuery(this).parent().find('input[name="addressId"]').val();
                    $.ajax({
                        type: "GET",
                        url: '<%=request.getContextPath()%>/admin/address?action=get',
                        data: { id: id },
                        dataType: "json",
                        contentType: "application/json",
                        success: function (data) {
                            jQuery('#update-address-modal input[name="id"]').val(data.id);
                            jQuery('#update-address-modal input[name="street"]').val(data.street);
                            jQuery('#update-address-modal input[name="number"]').val(data.number);
                            jQuery('#update-address-modal select[name="province"]').val(data.district.province.id).trigger('change');
                            setTimeout(function() {
                                jQuery('#update-address-modal select[name="district"]').val(data.district.id).trigger('change');
                            }, 50);
                            setTimeout(function() {
                                jQuery('#update-address-modal select[name="ward"]').val(data.ward.id).trigger('change');
                            }, 100);
                        }
                    })
                });
            }
        }).buttons().container().appendTo('#trademark_wrapper .col-md-6:eq(0)');

        // Validator
        let createValidate = create$.validate({
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
        let updateValidate = update$.validate({
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
        let addAddressValidate = addAddress$.validate({
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
        let updateAddressValidate = updateAddress$.validate({
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

        addAddress$.submit(function() {
            if (jQuery(this).valid()) {
                $.ajax({
                    type: "GET",
                    url: '<%=request.getContextPath()%>/admin/address?action=checkExistWithPath&path=' + getAddress(),
                    data: {},
                    dataType: "json",
                    contentType: "application/json",
                    success: function(data) {
                        if (data != null) {
                            alert('Địa chỉ đã được thêm');
                            return false;
                        }
                    }
                })
            }
        })
    });
</script>
</body>
</html>
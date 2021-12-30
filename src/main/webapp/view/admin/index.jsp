<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:import url="../import/admin/head.jsp"/>
    <title>Quản lý | Bảng điều khiển</title>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">
    <!-- Preloader -->
    <c:import url="../import/admin/preloader.jsp"/>
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
                <!-- Small boxes (Stat box) -->
                <div class="row">
                    <div class="col-lg-3 col-6">
                        <!-- small box -->
                        <div class="small-box bg-success">
                            <div class="inner">
                                <h3>1.350.000.000</h3>
                                <p>Tổng doanh thu</p>
                            </div>
                            <div class="icon">
                                <i class="fas fa-hand-holding-usd"></i>
                            </div>
                            <a href="<%=request.getContextPath()%>/admin/sale-report" class="small-box-footer">Xem chi tiết <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <!-- ./col -->
                    <div class="col-lg-3 col-6">
                        <!-- small box -->
                        <div class="small-box bg-info">
                            <div class="inner">
                                <h3>150</h3>
                                <p>Đơn hàng</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-bag"></i>
                            </div>
                            <a href="<%=request.getContextPath()%>/admin/order" class="small-box-footer">Xem chi tiết <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <!-- ./col -->
                    <div class="col-lg-3 col-6">
                        <!-- small box -->
                        <div class="small-box bg-danger">
                            <div class="inner">
                                <h3>339</h3>
                                <p>Sản phẩm bán ra</p>
                            </div>
                            <div class="icon">
                                <i class="fas fa-warehouse"></i>
                            </div>
                            <a href="<%=request.getContextPath()%>/admin/sale-report" class="small-box-footer">Xem chi tiết <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <!-- ./col -->
                    <div class="col-lg-3 col-6">
                        <!-- small box -->
                        <div class="small-box bg-warning">
                            <div class="inner">
                                <h3>440</h3>
                                <p>Người đăng ký</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-person-add"></i>
                            </div>
                            <a href="<%=request.getContextPath()%>/admin/user?role=3" class="small-box-footer">Xem chi tiết <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <!-- ./col -->
                </div>
                <!-- /.row -->
                <div class="row">
                    <div class="col-md-6">
                        <!-- PIE CHART -->
                        <div class="card card-danger">
                            <div class="card-header">
                                <h3 class="card-title">Thương hiệu bán chạy</h3>
                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                        <i class="fas fa-minus"></i>
                                    </button>
                                    <button type="button" class="btn btn-tool" data-card-widget="remove">
                                        <i class="fas fa-times"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="card-body">
                                <canvas id="pieChart" style="min-height: 260px; height: 260px; max-height: 260px; max-width: 100%;"></canvas>
                            </div>
                            <!-- /.card-body -->
                        </div>
                        <!-- /.card -->
                    </div>
                    <div class="col-md-6">
                        <!-- TABLE: LATEST ORDERS -->
                        <div class="card">
                            <div class="card-header bg-info border-transparent">
                                <h3 class="card-title">Đơn hàng mới nhất</h3>
                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                        <i class="fas fa-minus"></i>
                                    </button>
                                    <button type="button" class="btn btn-tool" data-card-widget="remove">
                                        <i class="fas fa-times"></i>
                                    </button>
                                </div>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body p-0">
                                <div class="table-responsive">
                                    <table class="table m-0">
                                        <thead>
                                        <tr>
                                            <th>Mã đơn hàng</th>
                                            <th>Người dùng</th>
                                            <th>Ngày đặt</th>
                                            <th>Trạng thái</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>OR1842</td>
                                            <td>19130003</td>
                                            <td>12:39:21 24/12/2021</td>
                                            <td><span class="badge badge-success">Đang giao</span></td>
                                        </tr>
                                        <tr>
                                            <td>OR1848</td>
                                            <td>19130024</td>
                                            <td>12:39:21 24/12/2021</td>
                                            <td><span class="badge badge-warning">Đang chuẩn bị</span></td>
                                        </tr>
                                        <tr>
                                            <td>OR7429</td>
                                            <td>19130115</td>
                                            <td>12:39:21 24/12/2021</td>
                                            <td><span class="badge badge-danger">Giao thành công</span></td>
                                        </tr>
                                        <tr>
                                            <td>OR7457</td>
                                            <td>ankoi0310</td>
                                            <td>12:39:21 24/12/2021</td>
                                            <td><span class="badge badge-info">Đang xử lý</span></td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- /.table-responsive -->
                            </div>
                            <!-- /.card-body -->
                            <div class="card-footer clearfix">
                                <a href="<%=request.getContextPath()%>/admin/order" class="btn btn-sm btn-secondary float-right">Xem tất cả các đơn hàng</a>
                            </div>
                            <!-- /.card-footer -->
                        </div>
                        <!-- /.card -->
                    </div>
                </div>
                <!-- /.row -->
                <div class="row">
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-header bg-gradient-warning">
                                <h3 class="card-title">Báo cáo tổng quát (theo tháng)</h3>
                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                        <i class="fas fa-minus"></i>
                                    </button>
                                    <button type="button" class="btn btn-tool" data-card-widget="remove">
                                        <i class="fas fa-times"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="d-flex justify-content-between align-items-center border-bottom mb-3">
                                    <p class="text-success text-xl">
                                        <i class="ion ion-ios-refresh-empty"></i>
                                    </p>
                                    <p class="d-flex flex-column text-right">
					                    <span class="font-weight-bold">
					                        <i class="ion ion-android-arrow-up text-success"></i> 12%
					                    </span>
                                        <span class="text-muted">SẢN PHẨM BÁN RA</span>
                                    </p>
                                </div>
                                <!-- /.d-flex -->
                                <div class="d-flex justify-content-between align-items-center border-bottom mb-3">
                                    <p class="text-warning text-xl">
                                        <i class="ion ion-ios-cart-outline"></i>
                                    </p>
                                    <p class="d-flex flex-column text-right">
					                    <span class="font-weight-bold">
					                        <i class="ion ion-android-arrow-up text-success"></i> 0.8%
					                    </span>
                                        <span class="text-muted">ĐƠN HÀNG ĐÃ ĐẶT</span>
                                    </p>
                                </div>
                                <!-- /.d-flex -->
                                <div class="d-flex justify-content-between align-items-center mb-0">
                                    <p class="text-danger text-xl">
                                        <i class="ion ion-ios-people-outline"></i>
                                    </p>
                                    <p class="d-flex flex-column text-right">
					                    <span class="font-weight-bold">
					                        <i class="ion ion-android-arrow-down text-danger"></i> 1%
					                    </span>
                                        <span class="text-muted">LƯỢT ĐĂNG KÝ</span>
                                    </p>
                                </div>
                                <!-- /.d-flex -->
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-header border-0">
                                <div class="d-flex justify-content-between">
                                    <h3 class="card-title">Doanh thu (theo năm)</h3>
                                    <a href="<%=request.getContextPath()%>/admin/sale-report">Xem báo cáo</a>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="d-flex">
                                    <p class="d-flex flex-column">
                                        <span class="text-bold text-lg">158.230.000 VNĐ</span>
                                        <span>Tổng doanh thu</span>
                                    </p>
                                    <p class="ml-auto d-flex flex-column text-right">
					                    <span class="text-success">
					                      <i class="fas fa-arrow-up"></i> 33.1%
					                    </span>
                                        <span class="text-muted">So với tháng trước</span>
                                    </p>
                                </div>
                                <!-- /.d-flex -->
                                <div class="position-relative mb-4">
                                    <canvas id="sales-chart" height="200"></canvas>
                                </div>
                                <div class="d-flex flex-row justify-content-end">
				                    <span class="mr-2">
				                        <i class="fas fa-square text-primary"></i> Doanh thu
				                    </span>
                                </div>
                            </div>
                        </div>
                        <!-- /.card -->
                    </div>
                </div>
            </div><!-- /.container-fluid -->
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
<c:import url="../import/admin/script.jsp"/>
<script>
    $(function () {
        //-------------
        //- PIE CHART -
        //-------------
        // Get context with jQuery - using jQuery's .get() method.
        var pieChartCanvas = $('#pieChart').get(0).getContext('2d')
        var pieData = {
            labels: [
                'Thương hiệu 1',
                'Thương hiệu 2',
                'Thương hiệu 3',
                'Thương hiệu 4',
                'Thương hiệu 5',
                'Thương hiệu 6',
                'Thương hiệu 7',
                'Thương hiệu 8',
                'Thương hiệu 9',
                'Thương hiệu 10',
            ],
            datasets: [
                {
                    data: [700, 500, 400, 600, 300, 100, 700, 500, 400, 600],
                    backgroundColor: ['#f52554', '#00a35a', '#f3fa21', '#abc0ef', '#3c8abc', '#d2d6de', '#f56954', '#00a65a', '#f39c12', '#00c0ef'],
                }
            ]
        };
        var pieOptions = {
            maintainAspectRatio: false,
            responsive: true,
            legend: {
                display: true,
                position: 'left',
                align: 'center'
            },
        }
        //Create pie or douhnut chart
        // You can switch between pie and douhnut using the method below.
        new Chart(pieChartCanvas, {
            type: 'pie',
            data: pieData,
            options: pieOptions,
            
        })
    })
</script>
</body>
</html>

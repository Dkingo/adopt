<%--
  Created by IntelliJ IDEA.
  User: 24255
  Date: 2019/8/22
  Time: 23:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>宠物领养管理后台</title>
    <!-- 引入css样式文件 -->
    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/js/houtai/css/bootstrap.min.css" rel="stylesheet">
    <!-- MetisMenu CSS -->
    <link href="${pageContext.request.contextPath}/js/houtai/css/metisMenu.min.css" rel="stylesheet">
    <!-- DataTables CSS -->
    <link href="${pageContext.request.contextPath}/js/houtai/css/dataTables.bootstrap.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/js/houtai/css/sb-admin-2.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath}/js/houtai/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/js/houtai/css/boot-crm.css" rel="stylesheet" type="text/css">
    <style>
        .panel-heading{background-color: #337ab7;border-color: #2e6da4;font-size:14px;padding-left:20px;height:36px;line-height:36px;color:white;position:relative;cursor:pointer;}/*转成手形图标*/
        .panel-heading span{position:absolute;right:10px;top:12px;}
    </style>
</head>
<body>
<div id="wrapper">
    <!-- 导航栏部分 -->
    <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <a class="navbar-brand" href="">流浪猫狗管理系统</a>
        </div>
        <!-- 导航栏右侧图标部分 -->
        <!-- 导航栏右侧图标部分 -->
        <ul class="nav navbar-top-links navbar-right">
            <!-- 消息通知 end -->
            <!-- 用户信息和系统设置 start -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="crmclass/list.action#">
                    <i class="fa fa-user fa-fw"></i>
                    <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="crmclass/list.action#"><i class="fa fa-user fa-fw"></i>
                        用户：</a>
                    </li>
                    <li><a href="crmclass/list.action#"><i class="fa fa-gear fa-fw"></i> 系统设置</a></li>
                    <li class="divider"></li>
                    <li>
                        <a href="logout.action">
                            <i class="fa fa-sign-out fa-fw"></i>退出登录
                        </a>
                    </li>
                </ul>
            </li>
            <!-- 用户信息和系统设置结束 -->
        </ul> <!-- 左侧显示列表部分 start-->
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <!-- 教学管理  折叠的分组列表 -->
                <div class="panel-heading" id="collapseListGroupHeading3" data-toggle="collapse"
                     data-target="#collapseListGroup3" role="tab">
                    <h4 class="panel-title">
                        后台管理 <span class="fa fa-chevron-up right"></span>
                    </h4>
                </div>
                <div id="collapseListGroup3" class="panel-collapse collapse in" role="tabpanel"
                     aria-labelledby="collapseListGroupHeading3">
                    <ul class="list-group">
                        <li class="list-group-item my_font">
                            <a href="${pageContext.request.contextPath}/users/users.action">
                                <i class="fa fa-flash fa-fw"></i> 用户信息
                            </a>
                        </li>
                        <li class="list-group-item my_font">
                            <a href="${pageContext.request.contextPath}/admin/admins.action">
                                <i class="fa fa-flash fa-fw"></i> 管理员信息
                            </a>
                        </li>
                        <li class="list-group-item my_font">
                            <a href="${pageContext.request.contextPath}/pet/getPets.action">
                                <i class="fa fa-sitemap fa-fw"></i> 宠物管理
                            </a>
                        </li>
                        <li class="list-group-item my_font">
                            <a href="${pageContext.request.contextPath}/adopt/getAdopts.action">
                                <i class="fa fa-sitemap fa-fw"></i> 领养管理
                            </a>
                        </li>
                        <li class="list-group-item my_font">
                            <a href="${pageContext.request.contextPath}/comment/getComments.action">
                                <i class="fa fa-sitemap fa-fw"></i> 评论管理
                            </a>
                        </li>
                        <li class="list-group-item my_font">
                            <a href="${pageContext.request.contextPath}/blog/blogs.action">
                                <i class="fa fa-sitemap fa-fw"></i> 团队活动管理
                            </a>
                        </li>
                    </ul>
                </div>

            </div>
        </div><!-- 左侧显示列表部分 end-->

    </nav>
    <!-- pet信息查询部分  start-->
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">宠物信息管理</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="panel panel-default">
            <!-- 搜索部分 -->
            <div class="panel-body">
                <form class="form-inline" method="get" action="#">
                    <div class="form-group">
                        <label for="findByName">宠物名</label>
                        <input type="text" class="form-control" id="findByName" value="" name="petName">
                    </div>
                    <button type="submit" class="btn btn-primary">查询</button>
                </form>
            </div>
        </div>
        <a href="crmclass/list.action#" class="btn btn-primary" data-toggle="modal" data-target="#newPet"
           onclick="clearPet()">新建</a>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">用户评论列表</div>
                    <!-- /.panel-heading -->
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>宠物编号</th>
                            <th>宠物名</th>
                            <th>种类</th>
                            <th>性别</th>
                            <th>生日</th>
                            <th>照片</th>
                            <th>领养状态</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>1</td>
                            <td>二狗</td>
                            <td>柯基</td>
                            <td>公</td>
                            <td>2019年7月2日</td>
                            <td>ab.png</td>
                            <td>未被领养</td>
                            <td>
                                <a href="crmclass/list.action#" class="btn btn-primary btn-xs" data-toggle="modal"
                                   data-target="#editPet" onclick="editPet(1)">修改</a>
                                <a href="crmclass/list.action#" class="btn btn-danger btn-xs"
                                   onclick="deletePet(1)">删除</a>
                            </td>
                        </tr>


                        </tbody>
                    </table>
                    <div class="col-md-12 text-right">
                        <nav>
                            <ul class="pagination">
                                <li class="disabled"><a href="#">首页 </a></li>
                                <li class="disabled"><a href="crmclass/list.action#">上一页 </a></li>
                                <li class="active"><a href="crmclass/list.action#">1</spanclass="sr-only"></spanclass
                                    ="sr-only"></a></li>
                                <li class="disabled"><a href="crmclass/list.action#">下一页</a></li>
                                <li class="disabled"><a href="crmclass/list.action#">尾页</a></li>
                            </ul>
                        </nav>
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-lg-12 -->
        </div>
    </div>
    <!-- 班级列表查询部分  end-->
</div>
<!-- 创建用户模态框 -->
<div class="modal fade" id="newPet" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">新建宠物信息</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="new_pet_form">
                    <div class="form-group">
                        <label for="new_petName" class="col-sm-2 control-label">
                            宠物名
                        </label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="new_petName" placeholder="宠物名"
                                   name="petName">
                        </div>
                        <label for="new_petType" class="col-sm-2 control-label">
                            宠物类型
                        </label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="new_petType" placeholder="宠物类型"
                                   name="petType">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_sex" class="col-sm-2 control-label">
                            性别
                        </label>
                        <div class="col-sm-4">
                            <select class="form-control" id="new_sex" name="sex">
                                <option value="雄性">雄性</option>
                                <option value="雌性">雌性</option>
                            </select>
                        </div>
                        <label for="new_birthday" class="col-sm-2 control-label">
                            生日
                        </label>
                        <div class="col-sm-4">
                            <input type="datetime-local" class="form-control" id="new_birthday" placeholder="生日"
                                   name="birthday">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_petBirthday" class="col-sm-2 control-label">
                            生日
                        </label>
                        <div class="col-sm-4">
                            <input type="datetime-local" class="form-control" id="new_petBirthday" placeholder="生日"
                                   name="petBirthday">
                        </div>
                        <label for="new_pic" class="col-sm-2 control-label">
                            照片
                        </label>
                        <div class="col-sm-1">
                            <input type="button" value="上传照片" id="new_pic" name="pic">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_state" class="col-sm-2 control-label">
                            领养状态
                        </label>
                        <div class="col-sm-4">
                            <select class="form-control" id="new_state" name="state">
                                <option value="0">未被领养</option>
                                <option value="1">被领养</option>
                            </select>
                        </div>

                    </div>
                    <div class="form-group">
                        <label for="new_remark" class="col-sm-2 control-label">
                            备注
                        </label>
                        <div class="col-sm-10">
                            <textarea class="form-control" id="new_remark" placeholder="备注"
                                      name="petRemark"></textarea>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="createPet()">创建评论记录</button>
            </div>
        </div>
    </div>
</div>
<!-- 修改班级模态框 -->
<div class="modal fade" id="editPet" tabindex="-1" role="dialog" aria-labelledby="myModalLabe">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
                <h4 class="modal-title" id="myModalLabe">修改宠物信息</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="edit_pet_form">
                    <input type="hidden" id="edit_id" name="id">
                    <div class="form-group">
                        <label for="edit_petName" class="col-sm-2 control-label">
                            宠物名
                        </label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="edit_petName" placeholder="宠物名"
                                   name="petName">
                        </div>
                        <label for="edit_petType" class="col-sm-2 control-label">
                            宠物类型
                        </label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="edit_petType" placeholder="宠物类型"
                                   name="petType">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_sex" class="col-sm-2 control-label">
                            性别
                        </label>
                        <div class="col-sm-4">
                            <select class="form-control" id="edit_sex" name="sex">
                                <option value="雄性">雄性</option>
                                <option value="雌性">雌性</option>
                            </select>
                        </div>
                        <label for="edit_birthday" class="col-sm-2 control-label">
                            生日
                        </label>
                        <div class="col-sm-4">
                            <input type="datetime-local" class="form-control" id="edit_birthday" placeholder="生日"
                                   name="birthday">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_petBirthday" class="col-sm-2 control-label">
                            生日
                        </label>
                        <div class="col-sm-4">
                            <input type="datetime-local" class="form-control" id="edit_petBirthday" placeholder="生日"
                                   name="petBirthday">
                        </div>

                        <label for="edit_pic" class="col-sm-2 control-label">
                            照片
                        </label>
                        <div class="col-sm-1">
                            <input type="button" value="上传照片" id="edit_pic" name="pic">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_state" class="col-sm-2 control-label">
                            领养状态
                        </label>
                        <div class="col-sm-4">
                            <select class="form-control" id="edit_state" name="state">
                                <option value="0">未被领养</option>
                                <option value="1">被领养</option>
                            </select>
                        </div>

                    </div>
                    <div class="form-group">
                        <label for="edit_petRemark" class="col-sm-2 control-label">
                            备注
                        </label>
                        <div class="col-sm-10">
                            <textarea class="form-control" id="edit_petRemark" placeholder="备注"
                                      name="petRemark"></textarea>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="updatePet()">保存修改</button>
            </div>
        </div>
    </div>
</div>
<!-- 引入js文件 -->
<!-- jQuery -->
<script src="${pageContext.request.contextPath}/js/houtai/js/jquery-1.11.3.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="${pageContext.request.contextPath}/js/houtai/js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="${pageContext.request.contextPath}/js/houtai/js/metisMenu.min.js"></script>
<!-- DataTables JavaScript -->
<script src="${pageContext.request.contextPath}/js/houtai/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/js/houtai/js/dataTables.bootstrap.min.js"></script>
<!-- Custom Theme JavaScript -->
<script src="${pageContext.request.contextPath}/js/houtai/js/sb-admin-2.js"></script>
<!-- 编写js代码 -->
<script type="text/javascript">
    $(function () {
        $(".panel-heading").click(function (e) {
            /*切换折叠指示图标*/
            $(this).find("span").toggleClass("fa-chevron-down");
            $(this).find("span").toggleClass("fa-chevron-up");
        });
    });

    //清空新建班级窗口中的数据
    function clearPet() {
        $("#new_petName").val("");
        $("#new_petType").val("");
        $("#new_sex").val("");
        $("#new_birthday").val("");
        $("#new_pic").val("");
        $("#new_state").val("");
        $("#new_remark").val("");
    }

    // 创建宠物
    function createPet() {
        $.Post("crmclass/create.action",
            $("#new_pet_form").serialize(), function (data) {
                if (data == "OK") {
                    alert("Pet创建成功！");
                    window.location.reload();
                } else {
                    alert("Pet创建失败！");
                    window.location.reload();
                }
            });
    }

    // 通过id获取修改的班级信息
    function editPet(id) {
        $.ajax({
            type: "get",
            url: "crmclass/getcrmclassById.action",
            data: {"id": id},
            success: function (data) {
                $("#edit_id").val(data.id);
                $("#edit_petName").val(data.petName);
                $("#edit_petType").val(data.petType);
                $("#edit_sex").val(data.sex);
                $("#edit_birthday").val(data.birthday);
                $("#edit_pic").val(data.pic);
                $("#edit_state").val(data.state);
                $("#edit_remark").val(data.remark);
            }
        });
    }

    // 执行修改班级操作
    function updatePet() {
        $.Post("crmclass/update.action",
            $("#edit_pet_form").serialize(),
            function (data) {
                if (data == "OK") {
                    alert("Pet更新成功！");
                    window.location.reload();
                } else {
                    alert("Pet更新失败！");
                    window.location.reload();
                }
            });
    }

    // 删除宠物
    function deletePet(id) {
        if (confirm('确实要删除该宠物吗?')) {
            $.Post("crmclass/delete.action", {"id": id},
                function (data) {
                    if (data == "OK") {
                        alert("记录删除成功！");
                        window.location.reload();
                    } else {
                        alert("删除记录失败！");
                        window.location.reload();
                    }
                });
        }
    }
</script>

</body>
</html>

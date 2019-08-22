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
                <div class="panel-heading" id="collapseListGroupHeading3" data-toggle="collapse" data-target="#collapseListGroup3" role="tab">
                    <h4 class="panel-title">
                        后台管理 <span class="fa fa-chevron-up right"></span>
                    </h4>
                </div>
                <div id="collapseListGroup3" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="collapseListGroupHeading3">
                    <ul class="list-group">
                        <li class="list-group-item my_font">
                            <a href="user.html">
                                <i class="fa fa-flash fa-fw"></i> 用户信息
                            </a>
                        </li>
                        <li class="list-group-item my_font">
                            <a href="admin.html">
                                <i class="fa fa-flash fa-fw"></i> 管理员信息
                            </a>
                        </li>
                        <li class="list-group-item my_font">
                            <a href="pet.html">
                                <i class="fa fa-sitemap fa-fw"></i> 宠物管理
                            </a>
                        </li>
                        <li class="list-group-item my_font">
                            <a href="t_adopt.html">
                                <i class="fa fa-sitemap fa-fw"></i> 领养管理
                            </a>
                        </li>
                        <li class="list-group-item my_font">
                            <a href="comment.html">
                                <i class="fa fa-sitemap fa-fw"></i> 评论管理
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div><!-- 左侧显示列表部分 end-->
    </nav>
    <!-- 班级列表查询部分  start-->
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">用户活动管理</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="panel panel-default">
            <!-- 搜索部分 -->
            <div class="panel-body">
                <form class="form-inline" method="get" action="">
                    <div class="form-group">
                        <label for="fingBytime">活动事件</label>
                        <input type="datetime-local" class="form-control" id="fingBytime" value="" name="actionTime">
                    </div>
                    <button type="submit" class="btn btn-primary">查询</button>
                </form>
            </div>
        </div>
        <a href="crmclass/list.action#" class="btn btn-primary" data-toggle="modal" data-target="#newBlog" onclick="clearCrmclass()">新建</a>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">活动列表</div>
                    <!-- /.panel-heading -->
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>编号</th>
                            <th>活动事件</th>
                            <th>活动地点</th>
                            <th>活动人物</th>
                            <th>活动描述</th>
                            <th>标题</th>

                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>2</td>
                            <td>2期JavaEE</td>
                            <td>Java基础</td>
                            <td>2015-04-28 00:00:00.0</td>
                            <td>2016-01-01 15:02:02.0</td>
                            <td>已开课</td>
                            <td>
                                <a href="crmclass/list.action#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#editBlog" onclick="editcrmclass(2)">修改</a>
                                <a href="crmclass/list.action#" class="btn btn-danger btn-xs" onclick="deletecrmclass(2)">删除</a>
                            </td>
                        </tr>


                        </tbody>
                    </table>
                    <div class="col-md-12 text-right">
                        <nav><ul class="pagination">
                            <li class="disabled"><a href="crmclass/list.action#">首页 </a></li>
                            <li class="disabled"><a href="crmclass/list.action#">上一页 </a></li>
                            <li class="active"><a href="crmclass/list.action#">1<spanclass="sr-only"></spanclass="sr-only"></a></li>
                            <li class="disabled"><a href="crmclass/list.action#">下一页</a></li>
                            <li class="disabled"><a href="crmclass/list.action#">尾页</a></li>
                        </ul></nav>
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-lg-12 -->
        </div>
    </div>
    <!-- 用户查询  end-->
</div>
<!-- 创建用户模态框 id newUser form users-->
<div class="modal fade" id="newBlog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">新建团队活动信息</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="new_blog_form">
                    <div class="form-group">
                        <label for="new_title" class="col-sm-2 control-label">
                            活动标题
                        </label>
                        <div class="col-sm-10">
                            <input type="datetime-local" class="form-control" id="new_title" placeholder="标题" name="title">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="new_actionTime" class="col-sm-2 control-label">
                            活动时间
                        </label>
                        <div class="col-sm-10">
                            <input type="datetime-local" class="form-control" id="new_actionTime" placeholder="活动时间" name="actionName">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_address" class="col-sm-2 control-label">
                            活动地点
                        </label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="new_address" placeholder="活动地点" name="address">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_peoples" class="col-sm-2 control-label">
                            活动人物
                        </label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="new_peoples" placeholder="活动人物" name="peoples">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_event" class="col-sm-2 control-label">
                            活动介绍
                        </label>
                        <div class="col-sm-10">
                            <textarea class="form-control" id="new_event" placeholder="活动介绍"  name="event"></textarea>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="createcrmclass()">创建用户</button>
            </div>
        </div>
    </div>
</div>
<!-- 修改班级模态框 -->
<div class="modal fade" id="editBlog" tabindex="-1" role="dialog" aria-labelledby="myModalLabe">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
                <h4 class="modal-title" id="myModalLabe">修改用户信息</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="edit_blog_form">
                    <input type="hidden" id="edit_id" name="id">
                    <div class="form-group">
                        <label for="edit_title" class="col-sm-2 control-label">
                            活动标题
                        </label>
                        <div class="col-sm-10">
                            <input type="datetime-local" class="form-control" id="edit_title" placeholder="标题" name="title">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="edit_actionTime" class="col-sm-2 control-label">
                            活动时间
                        </label>
                        <div class="col-sm-10">
                            <input type="datetime-local" class="form-control" id="edit_actionTime" placeholder="用户名称" name="actionTime">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_address" class="col-sm-2 control-label">
                            活动地点
                        </label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_address" placeholder="活动地点" name="address">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_peoples" class="col-sm-2 control-label">
                            活动人物
                        </label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_peoples" placeholder="活动人物" name="peoples">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_event" class="col-sm-2 control-label">
                            活动介绍
                        </label>
                        <div class="col-sm-10">
                            <textarea class="form-control" id="edit_event" placeholder="活动介绍"  name="event"></textarea>
                        </div>
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="updatecrmclass()">保存修改</button>
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
    $(function(){
        $(".panel-heading").click(function(e){
            /*切换折叠指示图标*/
            $(this).find("span").toggleClass("fa-chevron-down");
            $(this).find("span").toggleClass("fa-chevron-up");
        });
    });
    //清空新建班级窗口中的数据
    function clearCrmclass() {
        $("#new_actionName").val("");
        $("#new_address").val("");
        $("#new_peoples").val("");
        $("#new_event").val("");
        $("#new_title").val("");


    }
    // 创建用户
    function createcrmclass() {
        $.Post("crmclass/create.action",
            $("#new_blog_form").serialize(),function(data){
                if(data =="OK"){
                    alert("班级创建成功！");
                    window.location.reload();
                }else{
                    alert("班级创建失败！");
                    window.location.reload();
                }
            });
    }
    // 通过id获取修改的用户信息
    function editcrmclass(id) {
        $.ajax({
            type:"get",
            url:"crmclass/getcrmclassById.action",
            data:{"id":id},
            success:function(data) {
                $("#edit_id").val(data.id);
                $("#edit_actionTime").val(data.actionName);
                $("#edit_address").val(data.address);
                $("#edit_peoples").val(data.peoples);
                $("#edit_event").val(data.event);
                $("#edit_title").val(data.title);


            }
        });
    }
    // 执行修改用户
    function updateUsers() {
        $.Post("crmclass/update.action",
            $("#edit_blog_form").serialize(),
            function(data){
                if(data =="OK"){
                    alert("班级信息更新成功！");
                    window.location.reload();
                }else{
                    alert("班级信息更新失败！");
                    window.location.reload();
                }
            });
    }
    // 删除用户
    function deleteUsers(id) {
        if(confirm('确实要删除该用户吗?')) {
            $.Post("/crmclass/delete.action",{"id":id},
                function(data){
                    if(data =="OK"){
                        alert("用户删除成功！");
                        window.location.reload();
                    }else{
                        alert("用户班级失败！");
                        window.location.reload();
                    }
                });
        }
    }
</script>

</body></html>

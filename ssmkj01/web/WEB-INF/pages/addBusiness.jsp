<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/9/14
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增业务</title>
    <%--<script src="res/layui-v2.5.6/layui/layui.js"></script>
    <link rel="stylesheet" href="res/layui-v2.5.6/layui/css/layui.css">--%>
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
</head>
<body>
    <h1>新增业务</h1>
    <form action="" method="post">
    业务类型:<select name="" id="types">
                <option value="">请选择</option>
                <%--<option value="1">信用卡</option>
                <option value="2">储蓄卡</option>
                <option value="3">VIP卡</option>--%>
          </select>
        <br>

        排队号：<input type="text" name=""><br>
        备注信息：<textarea name="" cols="30" rows="10"></textarea>
        <br>
        <input type="submit" value="确定添加">

    </form>

    <script>
        //发送ajax 得到数据后渲染到 select 框中
        //异步 刷新 layui 的下拉框
        $.ajax({
            url:'/type/selectAll',
            type:'post',
            dataType:'json',
            success:function (res) {
                console.log(res)
                var select=$("#types")
                $.each(res.data,function (index,item) {
                    select.append(new Option(item.typeNames,item.id));  //在下拉菜单里添加元素
                });
                layui.form.render("select");
            }
        });

    </script>
</body>
</html>

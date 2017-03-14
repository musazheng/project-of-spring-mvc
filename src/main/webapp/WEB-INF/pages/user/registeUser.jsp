<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../common/base.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <script type="text/javascript" src="${JS_PATH}/creSpringmvc/user/registeUser.js"></script>
</head>
<body>
<div style="padding: 0px 0 0px 0px; width: 1000px;">
        <legend>Registe User</legend>
        <form id="registerUser">
            <div style="border: 0px solid; width: 1000px;">
                <table class="table-a" cellpadding="10" width="100%" border="0">
                    <tr>
                        <td width="15%" height="30">姓名:</td>
                        <td width="35%">
                            <input class="easyui-textbox" type="text" name="name" id="name" data-options="required:true" />
                        </td>
                    </tr>
                    <tr>
                        <td width="15%" height="30">年龄：</td>
                        <td width="35%">
                            <input class="easyui-textbox" type="text" name="old" id="old" data-options="required:true" />
                        </td>
                    </tr>

                    <tr>
                        <td width="15%" height="30">电话：</td>
                        <td width="35%">
                            <input class="easyui-textbox" type="text" name="callNo" id="callNo" data-options="required:true" />
                        </td>
                    </tr>

                    <tr>
                        <td width="15%" height="30">地址：</td>
                        <td width="35%">
                            <input class="easyui-textbox" type="text" name="address" id="address" data-options="required:true" />
                        </td>
                    </tr>

                    <tr>
                        <td align="center">
                            <table width="100%" border="0">
                                <tr>
                                    <td style="text-align: center;">
                                        <a href = "javascript:void(0)" class="easyui-linkbutton"
                                           onclick="javascript:register();" id="submit">Submit</a>
                                        <a href = "javascript:void(0)" class="easyui-linkbutton"
                                           onclick="javascript:clear();">Clear</a>
                                    </td>
                                </tr>
                            </table>
                        </td>

                    </tr>
                </table>
            </div>
        </form>
</div>
</body>
</html>
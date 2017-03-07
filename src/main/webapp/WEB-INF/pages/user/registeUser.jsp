<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../common/base.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <script type="text/javascript" src="${JS_PATH}/creSpringmvc/user/registeUser.js"></script>
</head>
<body>
<div style="padding: 0px 0 0px 0px; width: 1000px;">
    <fieldset>
        <legend>Add User</legend>
        <form id="adduser">
            <div style="border: 0px solid; width: 1000px;">
                <table class="table-a" cellpadding="10" width="100%" border="0">
                    <tr>
                        <td width="15%" height="30">EID:</td>
                        <td width="35%">
                            <input class="easyui-validatebox" type="text" name="eid" id="eid" data-options="required:true" />
                            <span id="loading"></span></td>
                        <td width="15%">Name:</td>
                        <td width="35%"><input readonly="readonly"
                                               class="easyui-validatebox" type="text" name="name" id="name"
                                               data-options="required:true" /></td>
                        <input type="hidden" name="company" id="company" />
                        <input type="hidden" name="lineManagerEid" id="lineManagerEid" />
                    </tr>

                    <tr>
                        <td>Title:</td>
                        <td><input readonly="readonly" class="easyui-validatebox"
                                   type="text" size="30" name="title" id="title" /></td>

                        <td>Org.Unit:</td>
                        <td><input readonly="readonly" class="easyui-validatebox"
                                   type="text" size="40" name="orgUnit" id="orgUnit" /></td>
                    </tr>

                    <tr>
                        <td>Line Manager:</td>
                        <td><input readonly="readonly" class="easyui-validatebox"
                                   type="text" name="manager" id="manager" /></td>
                        <td>Email:</td>
                        <td><input readonly="readonly" class="easyui-validatebox"
                                   type="text" size="30" name="email" id="email" /></td>
                    </tr>
                    <tr>
                        <td>User Role:</td>
                        <td>
                            <!--	<select class="easyui-combobox" editable="false" data-options="required:true,panelHeight:'auto'" name="userRole" id = "role">
                                    <option value="1">Admin</option>
                                    <option value="2">Domain Manager</option>
                                    <option value="3">LT  Manager</option>
                                    <option value="4">Parameter</option>
                                    <option value="5">Non Tier2 Manager</option>
                                </select>
                                -->
                            <select id="userRoleInfo" class="easyui-combotree" name="userRole"></select>
                        </td>
                        <td>Domain:</td>
                        <td>
                            <input class="easyui-combobox" editable="false" data-options="required:true" name="domain" id="domain" />
                        </td>
                    </tr>

                    <tr>
                        <td colspan="4" align="center">
                            <table width="100%" border="0">
                                <tr>
                                    <td colspan="2" style="text-align: center;">
                                        <a href = "javascript:void(0)" disabled = "disabled" class="easyui-linkbutton"
                                           onclick="javascript:addUser();" id="submit">
                                            Submit</a>
                                    </td>
                                </tr>
                            </table>
                        </td>

                    </tr>
                </table>
            </div>
        </form>
    </fieldset>
</div>
</body>
</html>
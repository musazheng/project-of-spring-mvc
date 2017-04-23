function modifyUserInfo(id){
    window.location.href = BASE_PATH  + "/user/getModifyUserPage?userId=" + id ;
}

function deleteUserInfo(id){
    parent.Dialog.confirm('Confirm','Are you sure you want to delete record?',function(r){
        if (r){
            $.ajax({
                url : BASE_PATH + '/user/delete',
                data : {userId: id},
                type : "POST",
                success : function(result) {
                    if(result.success){
                        parent.Dialog.alert("Success to delete user.");
                        $('#userList').datagrid('load');
                    }else{
                        parent.Dialog.alert("Error to delete user.");
                    }
                }

            });
        }
    });
}
$(function() {
    $('#userList').datagrid({
        title : 'User List',
        url : BASE_PATH + '/user/list',
        width : '100%',
        pagination : true,
        rownumbers : true,
        fitColumns : true,
        striped : true,
        queryParams : {queryColumn : '', queryValue : ''},
        singleSelect : true,
        pageList : [ 10, 20, 30 ],
        toolbar : '#tb',
        columns : [ [
                { field : 'userId', title : '编号',width : 100,align : 'left',sortable : 'true' },
                { field : 'name',title : '姓名',width : 100,align : 'left' },
                { field : 'old', title : '年龄',width : 100,align : 'left',},
                { field : 'callNo',title : '电话',width : 100,align : 'left',},
                { field : 'address',title : '地址',width : 100, align : 'left'},
                { field:'action',title:'Action',width:110,align:'center',formatter:function(value,rowData,rowIndex){
                var rtnString = "";
                rtnString = '<input type="button" name="修改" onclick="modifyUserInfo(\'' + rowData.userId + '\')" value="Modify" />&nbsp;<input type="button" name="删除" onclick="deleteUserInfo(\'' + rowData.userId + '\')" value="Delete" />';
                return rtnString;
            }
        }
        ] ],
        onLoadSuccess : function(data) {
            $('#userList').datagrid('selectRow', 0);
        }
    });
});
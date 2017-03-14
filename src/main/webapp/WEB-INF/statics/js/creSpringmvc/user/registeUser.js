function clear(){
  $('#registerUser').form('clear')
}

function register(){
   var url = BASE_PATH + "/user/register";
   $.ajax({
   			url : url,
   			data : $('#adduser').serialize(),
   			type : "POST",
   			success : function(result) {
   					if(result.success){
   						parent.Dialog.alert(result.msg);
   					}else{
   						parent.Dialog.alert(result.msg);
   						$('#submit').removeAttr('disabled');
   					}
   				}

   			});
}
<!doctype html>
<head>
<script src="assets/js/jquery.min.js"></script>
<script src="jquery.form.js"></script>
<style>
#progress { position:relative; width:400px; border: 1px solid #ddd; padding: 1px; border-radius: 3px; }
#bar { background-color: #B4F5B4; width:0%; height:20px; border-radius: 3px; }
#percent { position:absolute; display:inline-block; top:3px; left:48%; }
#inpFile {display: none};
</style>
</head>
<body>
<form id="frmAnexo" action="upload.php" method="post" enctype="multipart/form-data">
     <input type="file" size="60" id="inpFile" name="inpFile">
     <input type="button" id="btnAnexar" class="anexo" value="Ajax File Upload">
</form>
<div id="progress">
    <div id="bar"></div>
    <div id="percent">0%</div >
</div>
<br/>
<div id="message"></div>
<script>
$(document).ready(function(){
	$('#btnAnexar').click(function() {
		$('#inpFile').trigger('click');
	});
	$('#xinpFile').change(function(){
		if ($('#inpFile').val()!=''){
			$('#frmAnexo').trigger('submit');
			}else{
				alert('Selecione um arquivo');
				}
		})
	var options = { 
    beforeSend: function() {
    	$("#progress").show();
    	//clear everything
    	$("#bar").width('0%');
    	$("#message").html("");
		$("#percent").html("0%");
    },
    uploadProgress: function(event, position, total, percentComplete){
    	$("#bar").width(percentComplete+'%');
    	$("#percent").html(percentComplete+'%');

    },
    success: function() {
        $("#bar").width('100%');
    	$("#percent").html('100%');
    },
	complete: function(response){
		$("#message").html("<font color='green'>"+response.responseText+"</font>");
	},
	error: function(){
		$("#message").html("<font color='red'> ERROR: unable to upload files</font>");
	}
}; 
$("#frmAnexo").ajaxForm(options);
});
</script>
</body>
</html>
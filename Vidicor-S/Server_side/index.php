<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<title>����������</title>
<link href="styles/styles1.css" rel="stylesheet" type="text/css" />

<link type="text/css" rel="stylesheet" href="Client_side/jquery/jquery-ui.css" />
<script language='JavaScript' src="Client_side/jquery/jquery.js"></script>
<script language='JavaScript' src="Client_side/jquery/jquery-ui.js"></script>

<script language='JavaScript'>


function Post_RegisterChannel(data)
{
 data="rmxvp://"+data; 
 $("#ChannelLink").html("<a href='"+data+"' style='color:red'>"+data+"</a>");
 $("#OsDialog_3").dialog("close");
 $("#OsDialog_4").dialog("open");
}

function Pre_RegisterChannel(cnannel_name)
{
  channel = "rmxvp://"+cnannel_name+"/capture/livecam";
  $.post('channel.php', { ip: channel, name: "Client VSC"} , Post_RegisterChannel);
}

function GotoNextStep(N)
{
 if (N==2)
 {
  $("#OsDialog_2").dialog("open");
  RunSetup();
 }
 else
 if (N==3)
 {
  Pre_RegisterChannel($("#ip").html());
  $("#OsDialog_3").dialog("open");
 }
 else
  $("#OsDialog_"+N).dialog("open");
}


 $.ui.dialog.defaults.bgiframe = true;
 
 $(function() {
    $("#OsDialog_1").dialog({ modal: true, resizable:true, autoOpen: true, width:'800px'});
$('#OsDialog_1').dialog('option', 'buttons', { "����������� >>>": function() { $(this).dialog("close"); GotoNextStep(2); } });

    for (i=2; i<6; i++)
   $("#OsDialog_"+i).dialog({ modal: true, resizable:true, autoOpen: false, width:'800px'});
    
$("#OsDialog_2").dialog('option', 'buttons', { "����� >>>": function() { $(this).dialog("close"); GotoNextStep(3); } });
$("#OsDialog_3").dialog('option', 'buttons', { "�������": function() { $(this).dialog("close"); } });
 });
</script>

</head>

<body>
<a href="exit.php" >�����</a><br/>
��� �����: <div id="login"></div><br/>
��� �����: <div id="ip">54.165.59.7</div>


<div id="OsDialog_1" style="display:none" title="������ ����������� ������� �� �����������">
<center>
<table>
<tr>
<td align="center" width="100%">
<font size="4">
������� IP-����� � ��� ������ ��� �������� � ����� ������� ������ �� �������.<br /><br />
<table>
<tr><td>IP-����� [����]:</td><td align=left><input value="54.165.59.7" />,</td></tr>
<tr><td>��� ������<br />(��� ��������������):</td><td align=left><input value="/capture/livecam" /></td></tr>
</table>
</font> 
</td>
</tr>
</table> 
</center>
</div>


<div id="OsDialog_2" style="display:none" title="���������. ��� 2">
<center>
<table>
<tr>
<td align="center">
<font size="4">
<br/>���������, ���� ����������� ����� ������...<br/>
</font>
</td>
</tr>
</table> 
</center>
</div>

<div id="OsDialog_3" style="display:none" title="���������. ��� 3">
<center>
<table>
<tr>
<td align="center">
<font size="4">
<br/>��� ��� ��������������� ����� �� ������������:<br/>"<span id="ChannelLink"></span>".<br/><br/>
</font>
</td>
</tr>
</table> 
</center>
</div>


</body>
</html>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!--  "http://www.w3.org/TR/html4/loose.dtd"

      ������ ����������� ������ RMXFViewer
      ------------------------------------
-->

<HTML>

<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
<TITLE>������ ���������� �������� Vidicor Ltd.</TITLE>

<link rel="shortcut icon" type="image/x-icon" href="/favicon.ico"> 
<LINK HREF="styles/style.css" REL="stylesheet" TYPE="text/css">

<!--
  � ������ HEAD ���-�������� �������� JavaScript-����
  "rmxfrecv.js", ����������� �� ���-������� � �������� Files 
  ����� ������ ��������.
-->

<!--  ����������� ������ removedsrc='Files/Control.js' src='Files/Control.js'-->
<script language='JavaScript' type="text/javascript" id="idControlScript"></script>
<SCRIPT language='JavaScript' type="text/javascript" src='http://download.vidicor.ru/ViewPage/Files/rmxfrecv.js'></SCRIPT>
<SCRIPT language='JavaScript' type="text/javascript" id='pre_config_file'></SCRIPT>
<SCRIPT language='JavaScript' type="text/javascript" id='user_config_file'></SCRIPT>
<SCRIPT language='JavaScript' type="text/javascript" src='files/rmxfChannelTest.js'></SCRIPT>
<SCRIPT language='JavaScript' type="text/javascript" src='files/rmxf_copyVideo.js'></SCRIPT>

<!--
  � ����� -config_name-.def ������� ��� ������ ������������, 
  ���������� �������� ��������, ������ � ����� �������� � ������� ������� ����� � ����� 
-->
<SCRIPT language='JavaScript' type="text/javascript" src='-config_name-.def'></SCRIPT>

</HEAD>

<BODY id="body" leftmargin="0" topmargin="18" marginwidth="0" marginheight="0" bgcolor="#ffffff" onLoad="onLoadDocument()">

<!--  ���������� � ��������� JavaScript -->
<noscript>
 <table>
  <tr>
    <td><img src='Images/warning.png' alt='Your browser does not support JavaScript!'></td>
    <td align='center'>
        <font color='red'>Your browser does not support JavaScript! Please use Internet Explorer, add site to "Trusted" or enable JavaScript Support!/
        ��� ������� �� ������������ JavaScript! ���������� �������������� ������ �������� � ������� Internet Explorer, ������� ���� � "����������" ��� �������� ��������� JavaScript!
	</font>
    </td>
   </tr>
 </table>
</noscript>


<!-- BEGIN IE INFO-->
<script language="JavaScript" src="Files/cookies.js" type="text/javascript"></script>


<table ALIGN=CENTER id="ieinfo" style="position:absolute;top:0;background-color:Yellow; width:100%; display:none">
 <tr>
  <td valign='middle' align='right'><img src="images/ie.png" alt='IE' width="14" height="15"></td>
  <td valign='middle' align='center' width="100%"><font size='1'><span id='ietext'></span></font></td>
  <td valign='middle' align='left'><img src="images/ie.png" alt='IE' width="14" height="15"></td>
 </tr>
</table>


<script language="JavaScript" type="text/javascript">

 function HideIeInfo()
 {
  var el = document.getElementById('ieinfo');
  if (el) el.style.display = 'none';
  setCookie("ieinfo", 1);
 }

 if (window.navigator.userAgent.indexOf("MSIE") ==  -1){  
 var el = document.getElementById('ietext');
  if (el)  el.innerHTML = notIEText;
  
  el = document.getElementById('ieinfo');
  if(el) el.style.display = "inline";
 }

 if (getCookie("ieinfo")==1) HideIeInfo();
</script>

<!-- END IE INFO-->

<CENTER>

<TABLE border=0 cellspacing=0 cellpadding=0 width='80%' id="allWindow" bgcolor=silver style='display:inline'>

<!-- ---------------------------------------------------------------------------------------------- -->
  <tr>
    <td id='Fra me_tl'><img src="http://download.vidicor.ru/ViewPage/Images/frame_t_l.png"></td>
    <td id='Frame_t'></td>
    <td id='Fra me_tr'><img src="http://download.vidicor.ru/ViewPage/Images/frame_t_r.png"></td>
  </tr>

  <tr align=center>
    <td id='Frame_l'></td>
    <td align='center' valign='middle'>
	<!-- �������� �������� (������ �������) -->
	<b><p id="idTitlePlaceholderH1"></b>
	<hr>
	<!-- �������� �������� ������ -->
	<a href="#channels">
	  <SPAN id='viewerTitle'></SPAN>
	</a>
<!-- #include virtual="Files/CurrentChannelName.htm"-->
    </td>
    <td id='Frame_tr1'></td>
  </tr>

  <tr>
    <td id='Frame_bl'></td>
    <td id='Frame_b'></td>
    <td id='Frame_br'></td>
  </tr>

</table>

<br>

<!--  ������� ���������� -->
<small><small>��� ������������� �������� ��������� <b><u>� MS IE, Mozilla, Safari, Chrome, Opera</u></b> ��������� ������������� �� ��� ������� �������� <b><u>���</u></b> ������������� ������� ��������� �������������� <a href="http://download.vidicor.ru/activex_setup.exe"><b><u>�����</u></b></a></small></small>

<table>
<tr>
<td>
<small><small>��� ��������� ������� �����������</small></small>
</td>
<td>
<button title="�������� ��������������� ����������� � ����� ���� -- ���� ������������ �� MS Internet Explorer" id=ButtonViewer onClick='playVideo((document.getElementById("URLBaseS")).value, currentRef, "Viewer");'>Media Watcher</button>
</td>
<td>
<small><small>&nbsp;&nbsp;&nbsp;����� �������������� ������������� ��� <a href="http://download.vidicor.ru/watcher_setup.exe"><b><u>�����</u></b></a>
</td>
</tr>
</table>

</small>

<!-- ���� ��� ��������� �� ������������ �������������� �������� ����������, 
�� ������ �������������� ��������������� ��������� ������: 
<br>
1-� ������  ��������� - "ActiveX ���������", 2-� ������ ��������� - "Watcher"
<br> (��. ���������� ����). -->

<!--  ����������� + ����� ���. ����� -->
<!-- ����� � ������������� � ������� �������� -->

<!-- ����������� ������ -->
<!-- l anguage='JavaScript' type="text/javascript" src='Files/Control.js'-->

<TABLE border=0 cellspacing=0 cellpadding=0 width=320 id="allWindow" bgcolor=silver style='display:inline' >

<!-- ---------------------------------------------------------------------------------------------- -->
  <tr>
    <td id='Fra me_tl'><img src="http://download.vidicor.ru/ViewPage/Images/frame_t_l.png"></td>
    <td id='Frame_t'></td>
    <td id='Fra me_tr'><img src="http://download.vidicor.ru/ViewPage/Images/frame_t_r.png"></td>
  </tr>

<!-- ---------------------------- ����� ����������� � ����� ������ -------------------------------- -->

  <TR align=center>
    <td id='Frame_l'></td>

    <td id="controlCellB" align=center border=0>
      <center>

      <table width='100%' align=center border=0>
        <tr>
	<td>
	  <a Title=' ����������� �����? ��������� ��� �� ���� ����!' href='#' onclick="showCopyPopup_Inc();return false;">
	    <img src="images/include_site.png" width=32 onmouseenter="this.src='images/include_site2.png'" onmouseleave="this.src='images/include_site.png'" style="text-decoration:none;color:silver" border='0' alt="Code">
	  </a>
	</td>

	<td>
	  <a Title=' ����������� �����? ������� ������ �� ���� ������� ��� ��������� ������ �� ��� �����!' href='#' onclick="showCopyPopup_Link();return false;">
	    <img src="images/Mail_site.png" width=24 onmouseenter="this.src='images/sendMail_site.png'" onmouseleave="this.src='images/Mail_site.png'" style="text-decoration:none;color:silver" border='0' alt="URL">
	  </a>
	</td>

    <!-- ����� ��������� ������ -->

	<TD align="right" valign="middle" id="controlCell1"
	    Title = '���������� ������� ������������ ����� ���� ��������������. �������� ��� �� ��������������, ������� ������������ ��� ����� ����� ��������� ���������� ������ ������ � ���������� ������ �������'>
	
	</td>

	<td align="left" valign="middle" id="tdreflectors"
	    Title = '���������� ������� ������������ ����� ���� ��������������. �������� ��� �� ��������������, ������� ������������ ��� ����� ����� ��������� ���������� ������ ������ � ���������� ������ �������'>
	</TD>

	<td>&nbsp</td>


        <TD align="right" valign="middle" id="controlCell5"
            Title = '����� ������ ������ -- ������ ������������ � ������� � ������, �� ������ � �������� ������'>
	    <small><small>�����:</small></small>
	</td>

	<td align="center" valign="middle"
            Title = '����� ������ ������ -- ������ ������������ � ������� � ������, �� ������ � �������� ������'>
	    <INPUT type='text' name='recvbufferMid' id='recvbufferMid' size=3 onChange='playVideo((document.getElementById("URLBaseS")).value, currentRef)'>
	</td>

	<td align="left" valign="middle"
            Title = '����� ������ ������ -- ������ ������������ � ������� � ������, �� ������ � �������� ������'>
	<small><small>��</small></small>
        </td>

	<td>&nbsp</td>

	<td align='center' Title="��������/��������� ������. ����� ������ ����������� � ��������� ���� �������� ����� 'c:\Vidicor_Record\'">
	  <input type='button' style='background-color:"#aaffaa"' id='idRecord' name='StartRecord' onClick='startRecord();playVideo((document.getElementById("URLBaseS")).value, currentRef);' value='Start Rec'>
	  <INPUT type='text'   style='background-color:"#cccccc"' name='pathForRecord' id='pathForRecord' size=2 value='Rec1 ' Title='��� �������� ��� ���������� �����������'>
	</td>

	<td>
	  <table>
	    <tr><td>
	      <a href="http://download.vidicor.ru/VidicorView_help.htm" title='������ "��� ��������"' target="_blank">
		<img src="images/help.png"  onmouseenter="this.src='images/help2.png'" onmouseleave="this.src='images/help.png'" style="text-decoration:none;color:silver" border='0' width=24 alt='������ "��� ��������"'>
		</a>
		<a href="http://download.vidicor.ru/help/interface.html" title="������ �� ����������" target="_blank">
		<img src="images/help2.png"  onmouseenter="this.src='images/help.png'" onmouseleave="this.src='images/help2.png'" style="text-decoration:none;color:silver" border='0' width=24 alt="������ �� ����������">
	      </a>
	    </td></tr>
	  </table>
	</td>

      </tr>

      </table>
      </center>
    </TD>
    <td id='Frame_tr1'></td>
  </TR>

<!-- --------------------------- / ����� ����������� � ����� ������ ------------------------------- -->


<!-- --------------------------------- ��������� ������������ ------------------------------------- -->

  <TR>

    <td id='Frame_l'></td>

    <TD align="center" valign="middle" id="videoCell">

    <!-- ����� ��� ���� ������������� -->
      <TABLE border=1 id='viewersTable'>
        <TBODY></TBODY>
      </TABLE>

    </TD>

    <td id='Frame_r'></td>

  </TR>

<!-- --------------------------------- / ��������� ������������ ------------------------------------- -->


  <TR>

    <td id='Frame_l'></td>

    <TD>

<!-- -------------------- ������������� ��������������� ����� � ����� �����/������ ------------------ -->

      <TABLE  border=0 WIDTH='100%' cellspacing=0 cellpadding=0>
        <TR>
	  <TD align=\'center\' valign=\'middle\' height=27 id=\'audioCell\'>
	    <SPAN id="viewerPlaceSnd"></SPAN>
	  </TD>
	</TR>

	<tr>
	  <td align="center" valign="middle">

	    <table border=0 width='100%'>

	      <TR id="controlCell2" Title = "�������� ���������� ���� (������������ ���/� �������) � ����� ������������� (��� ������ �������/��������, ��� �������� � ����� ������, ������� -- � ������, ��� ��������� ��������� � ��������)">
		<TD align="right" valign="middle" align=center id="lngtd">
		</td>

		<TD align="left" valign="middle" id=LangSelectorCell>
		</TD>

		<TD align="center" valign="middle" id="tdRefLang">
		</td>

	        <TD align="left" id=SplitSelectorCell></TD>

	        </TD>
	      </TR>
	    </table>
	  </TD>
	</TR>
      </table>

<!-- ------------------ / ������������� ��������������� ����� � ����� �����/������ ------------------ -->
    </TD>

    <td id='Frame_r'></td>

  </TR>

  <tr>
    <td id='Frame_bl'></td>
    <td id='Frame_b'></td>
    <td id='Frame_br'></td>
  </tr>

</table>


<br>
<br>

<!--  ����� ������ -->
<!-- ---------------------------- �����/����� ������� ������� ----------------------------- -->

	    <!-- ������� ������� ������� -->
	    <TABLE border=0 width='77%' id='serversTable'>
	      <TBODY></TBODY>
	    </TABLE>

<!-- --------------------------- / �����/����� ������� ������� ---------------------------- -->

<br>

<!-- ��������� ��� -->
[an error occurred while processing this directive]

<br>

<!--  ������ ���������� -->
<!-- ������ �������� ����� -->

<table bgcolor=white style='display:inline' >
<tr>
<td align=center valign=middle>
<small><small>
<b>������ ���������� � �������� 
<br>������� �������� <a href="http://vidicor.ru">"VidicoR"</a></b>
</small></small>
<td>
<a href="http://vidicor.ru">
<img src="http://vidicor.ru/site/img/vidicor.png" alt='��� "�������"' border=0>
</a>
</td>

<td valign="middle">
<a href="http://makstv.vidicor.com/video/trailer1.wmv">1</a><br>
<a href="http://makstv.vidicor.com/video/trailer2.wmv">2</a><br>
</td>
<td valign="middle">
<a href="http://makstv.vidicor.com/video/trailer1.avi">1</a><br>
<a href="http://makstv.vidicor.com/video/trailer2.avi">2</a>
</td>

<td valign="middle">
<table border=1 bgcolor="#ffffcc" style='display:inline'>
<tr>
<td>
<small><small>������ <b><u>���������������</u></b> ������������� ������� �� <a href="mailto:info@vidicor.ru">info@vidicor.ru</a>, 
<br>���� �������� ������� ��������� �������� ���-���� ����� ��� ��������</small></small>
</td>
</tr>
</table>
</td>

</tr>
</table>


&nbsp;

<!--  ������� -->
<!--  -->

<table style='display:inline'>
<tr>
<td>

<!-- MyCounter v.2.0 -->
<script type="text/javascript"><!--
my_id = 3303;
my_width = 88;
my_height = 61;
my_alt = "MyCounter - ��� �������";
//--></script>

<!-- <script type="text/javascript"
  removedsrc="http://scripts.mycounter.com.ua/counter2.0.js" id="idCounterScript">
</script>
<div id="idCounterPlaceholderDiv"></div>

<noscript>
<a target="_blank" href="http://mycounter.com.ua/">
<img
removedsrc="http://get.mycounter.com.ua/counter.php?id=3303"
id="idCounterImage"
title="MyCounter - ��� �������"
alt="MyCounter - ��� �������"
width="88" height="61" border="0">
</a>
</noscript>
<!--/ MyCounter -->

</td>
</tr>
</table>

</CENTER>

</BODY>
</HTML>
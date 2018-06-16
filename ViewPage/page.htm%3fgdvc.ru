<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!--  "http://www.w3.org/TR/html4/loose.dtd"

      Пример встраивания модуля RMXFViewer
      ------------------------------------
-->

<HTML>

<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
<TITLE>Прямая трансляция системой Vidicor Ltd.</TITLE>

<link rel="shortcut icon" type="image/x-icon" href="/favicon.ico"> 
<LINK HREF="styles/style.css" REL="stylesheet" TYPE="text/css">

<!--
  В секцию HEAD веб-страницы включите JavaScript-файл
  "rmxfrecv.js", находящийся на веб-сервере в подпапке Files 
  папки данной страницы.
-->

<!--  Управляющий скрипт removedsrc='Files/Control.js' src='Files/Control.js'-->
<script language='JavaScript' type="text/javascript" id="idControlScript"></script>
<SCRIPT language='JavaScript' type="text/javascript" src='http://download.vidicor.ru/ViewPage/Files/rmxfrecv.js'></SCRIPT>
<SCRIPT language='JavaScript' type="text/javascript" id='pre_config_file'></SCRIPT>
<SCRIPT language='JavaScript' type="text/javascript" id='user_config_file'></SCRIPT>
<SCRIPT language='JavaScript' type="text/javascript" src='files/rmxfChannelTest.js'></SCRIPT>
<SCRIPT language='JavaScript' type="text/javascript" src='files/rmxf_copyVideo.js'></SCRIPT>

<!--
  В файле -config_name-.def задайте имя файлов конфигурации, 
  содержащих название страницы, адреса и имена серверов и каналов вещания видео и звука 
-->
<SCRIPT language='JavaScript' type="text/javascript" src='-config_name-.def'></SCRIPT>

</HEAD>

<BODY id="body" leftmargin="0" topmargin="18" marginwidth="0" marginheight="0" bgcolor="#ffffff" onLoad="onLoadDocument()">

<!--  Информация о поддержке JavaScript -->
<noscript>
 <table>
  <tr>
    <td><img src='Images/warning.png' alt='Your browser does not support JavaScript!'></td>
    <td align='center'>
        <font color='red'>Your browser does not support JavaScript! Please use Internet Explorer, add site to "Trusted" or enable JavaScript Support!/
        Ваш Браузер не поддерживает JavaScript! Пожалуйста просматривайте данную страницу с помощью Internet Explorer, добавте сайт в "Доверенные" или включите поддержку JavaScript!
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
	<!-- Название страницы (группы каналов) -->
	<b><p id="idTitlePlaceholderH1"></b>
	<hr>
	<!-- Название текущего канала -->
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

<!--  Верхнее добавление -->
<small><small>Для автоустановки элемента просмотра <b><u>в MS IE, Mozilla, Safari, Chrome, Opera</u></b> отвечайте утвердительно на все запросы браузера <b><u>или</u></b> инсталлируйте элемент просмотра самостоятельно <a href="http://download.vidicor.ru/activex_setup.exe"><b><u>ЗДЕСЬ</u></b></a></small></small>

<table>
<tr>
<td>
<small><small>Для просмотра плеером используйте</small></small>
</td>
<td>
<button title="Просмотр самостоятельным приложением в своем окне -- если используется не MS Internet Explorer" id=ButtonViewer onClick='playVideo((document.getElementById("URLBaseS")).value, currentRef, "Viewer");'>Media Watcher</button>
</td>
<td>
<small><small>&nbsp;&nbsp;&nbsp;Перед использованием инсталлируйте его <a href="http://download.vidicor.ru/watcher_setup.exe"><b><u>ЗДЕСЬ</u></b></a>
</td>
</tr>
</table>

</small>

<!-- Если Ваш компьютер не поддерживает автоматический просмотр трансляции, 
Вы можете воспользуйтесь дополнительными способами приема: 
<br>
1-й способ  просмотра - "ActiveX компонент", 2-й способ просмотра - "Watcher"
<br> (см. инструкцию ниже). -->

<!--  Просмотрщик + выбор доп. звука -->
<!-- Рамка с просмотрщиком с верхней надписью -->

<!-- Управляющий скрипт -->
<!-- l anguage='JavaScript' type="text/javascript" src='Files/Control.js'-->

<TABLE border=0 cellspacing=0 cellpadding=0 width=320 id="allWindow" bgcolor=silver style='display:inline' >

<!-- ---------------------------------------------------------------------------------------------- -->
  <tr>
    <td id='Fra me_tl'><img src="http://download.vidicor.ru/ViewPage/Images/frame_t_l.png"></td>
    <td id='Frame_t'></td>
    <td id='Fra me_tr'><img src="http://download.vidicor.ru/ViewPage/Images/frame_t_r.png"></td>
  </tr>

<!-- ---------------------------- Выбор репликатора и длины буфера -------------------------------- -->

  <TR align=center>
    <td id='Frame_l'></td>

    <td id="controlCellB" align=center border=0>
      <center>

      <table width='100%' align=center border=0>
        <tr>
	<td>
	  <a Title=' Понравилось видео? Поставьте его на свой сайт!' href='#' onclick="showCopyPopup_Inc();return false;">
	    <img src="images/include_site.png" width=32 onmouseenter="this.src='images/include_site2.png'" onmouseleave="this.src='images/include_site.png'" style="text-decoration:none;color:silver" border='0' alt="Code">
	  </a>
	</td>

	<td>
	  <a Title=' Понравилось видео? Пошлите ссылку на него друзьям или поставьте ссылку на свём сайте!' href='#' onclick="showCopyPopup_Link();return false;">
	    <img src="images/Mail_site.png" width=24 onmouseenter="this.src='images/sendMail_site.png'" onmouseleave="this.src='images/Mail_site.png'" style="text-decoration:none;color:silver" border='0' alt="URL">
	  </a>
	</td>

    <!-- Выбор источника потока -->

	<TD align="right" valign="middle" id="controlCell1"
	    Title = 'Трансляция ведется одновременно через сеть ретрансляторов. Выберите тот из ретрансляторов, который обеспечивает для вашей точки просмотра наименьшие потери данных и наименьшую оплату трафика'>
	
	</td>

	<td align="left" valign="middle" id="tdreflectors"
	    Title = 'Трансляция ведется одновременно через сеть ретрансляторов. Выберите тот из ретрансляторов, который обеспечивает для вашей точки просмотра наименьшие потери данных и наименьшую оплату трафика'>
	</TD>

	<td>&nbsp</td>


        <TD align="right" valign="middle" id="controlCell5"
            Title = 'Длина буфера больше -- больше устойчивость к потерям в канале, но больше и задержка приема'>
	    <small><small>Буфер:</small></small>
	</td>

	<td align="center" valign="middle"
            Title = 'Длина буфера больше -- больше устойчивость к потерям в канале, но больше и задержка приема'>
	    <INPUT type='text' name='recvbufferMid' id='recvbufferMid' size=3 onChange='playVideo((document.getElementById("URLBaseS")).value, currentRef)'>
	</td>

	<td align="left" valign="middle"
            Title = 'Длина буфера больше -- больше устойчивость к потерям в канале, но больше и задержка приема'>
	<small><small>мс</small></small>
        </td>

	<td>&nbsp</td>

	<td align='center' Title="Включить/выключить запись. Файлы записи размещаются в указанной ниже подпапке папки 'c:\Vidicor_Record\'">
	  <input type='button' style='background-color:"#aaffaa"' id='idRecord' name='StartRecord' onClick='startRecord();playVideo((document.getElementById("URLBaseS")).value, currentRef);' value='Start Rec'>
	  <INPUT type='text'   style='background-color:"#cccccc"' name='pathForRecord' id='pathForRecord' size=2 value='Rec1 ' Title='Имя подпапки для сохранения видеофайлов'>
	</td>

	<td>
	  <table>
	    <tr><td>
	      <a href="http://download.vidicor.ru/VidicorView_help.htm" title='Помощь "Как смотреть"' target="_blank">
		<img src="images/help.png"  onmouseenter="this.src='images/help2.png'" onmouseleave="this.src='images/help.png'" style="text-decoration:none;color:silver" border='0' width=24 alt='Помощь "Как смотреть"'>
		</a>
		<a href="http://download.vidicor.ru/help/interface.html" title="Помощь по интерфейсу" target="_blank">
		<img src="images/help2.png"  onmouseenter="this.src='images/help.png'" onmouseleave="this.src='images/help2.png'" style="text-decoration:none;color:silver" border='0' width=24 alt="Помощь по интерфейсу">
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

<!-- --------------------------- / Выбор репликатора и длины буфера ------------------------------- -->


<!-- --------------------------------- Видеоокно просмотрщика ------------------------------------- -->

  <TR>

    <td id='Frame_l'></td>

    <TD align="center" valign="middle" id="videoCell">

    <!-- Место для окон просмотрщиков -->
      <TABLE border=1 id='viewersTable'>
        <TBODY></TBODY>
      </TABLE>

    </TD>

    <td id='Frame_r'></td>

  </TR>

<!-- --------------------------------- / Видеоокно просмотрщика ------------------------------------- -->


  <TR>

    <td id='Frame_l'></td>

    <TD>

<!-- -------------------- Проигрыватель дополнительного звука и выбор языка/режима ------------------ -->

      <TABLE  border=0 WIDTH='100%' cellspacing=0 cellpadding=0>
        <TR>
	  <TD align=\'center\' valign=\'middle\' height=27 id=\'audioCell\'>
	    <SPAN id="viewerPlaceSnd"></SPAN>
	  </TD>
	</TR>

	<tr>
	  <td align="center" valign="middle">

	    <table border=0 width='100%'>

	      <TR id="controlCell2" Title = "Выберите выдаваемый звук (оригинальный или/и перевод) и режим прослушивания (или только перевод/оригинал, или оригинал в одном канале, перевод -- в другом, или наложение оригинала и перевода)">
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

<!-- ------------------ / Проигрыватель дополнительного звука и выбор языка/режима ------------------ -->
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

<!--  Выбор канала -->
<!-- ---------------------------- Вывод/выбор каналов вещания ----------------------------- -->

	    <!-- Таблица каналов вещания -->
	    <TABLE border=0 width='77%' id='serversTable'>
	      <TBODY></TBODY>
	    </TABLE>

<!-- --------------------------- / Вывод/выбор каналов вещания ---------------------------- -->

<br>

<!-- Текстовый чат -->
[an error occurred while processing this directive]

<br>

<!--  Нижнее добавление -->
<!-- Выдача логотипа внизу -->

<table bgcolor=white style='display:inline' >
<tr>
<td align=center valign=middle>
<small><small>
<b>Прямая трансляция в Интернет 
<br>ведется системой <a href="http://vidicor.ru">"VidicoR"</a></b>
</small></small>
<td>
<a href="http://vidicor.ru">
<img src="http://vidicor.ru/site/img/vidicor.png" alt='НПЦ "Видикор"' border=0>
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
<small><small>Просим <b><u>незамедлительно</u></b> информировать письмом на <a href="mailto:info@vidicor.ru">info@vidicor.ru</a>, 
<br>если просмотр данного материала нарушает чьи-либо права или интересы</small></small>
</td>
</tr>
</table>
</td>

</tr>
</table>


&nbsp;

<!--  Счетчик -->
<!--  -->

<table style='display:inline'>
<tr>
<td>

<!-- MyCounter v.2.0 -->
<script type="text/javascript"><!--
my_id = 3303;
my_width = 88;
my_height = 61;
my_alt = "MyCounter - Ваш счётчик";
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
title="MyCounter - Ваш счётчик"
alt="MyCounter - Ваш счётчик"
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
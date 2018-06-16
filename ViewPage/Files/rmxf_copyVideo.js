// Вывод кнопки с текстом для вставки на сайт видеоокна трансляции

var v_popup = 0;
try{
 if (!v_popup && window && window.createPopup)
 v_popup = window.createPopup();
}
catch(err)
{};

function show_popup(Text)
{
  var oBody = v_popup.document.body;  
      oBody.style.backgroundColor = "#ffffaa";
      oBody.style.border = "solid black 1px";


//      oBody.style.overflow ="scroll";
      oBody.height = "1px";
      oBody.width = "1px";

      oBody.innerHTML = Text;

  

      p_h = 250;
      p_w = 750;

      w = document.body.clientWidth;
      h = document.body.clientHeight;

      try {parent.window.focus();}
          catch(err) {};
          try {v_popup.show(w/2 - p_w/2,h/2 - p_h/2,p_w,p_h, document.body);}
          catch(err) {};
}




function showCopyPopup_Inc()
{
 try
 {
     if (rmxfViewersVid[0])
     {
      var v = rmxfViewersVid[0].rmxfobj;
      if (v)
      {
       Text = " Скопируйте этот текст для вставки видеоокна в свою страницу:<center><textarea cols=70 rows=5 "+"id=mbuffer "+" width=590 style='word-wrap:break-word;background-color:Snow'>";
       Text +=	'&lt;if'+'rame height="'+(v.videoHeight+20)+'" width="' + v.videoWidth + '" border=0 frameSpacing=0 frameBorder=0 '+
		'src="http://download.vidicor.ru/Viewpage/page1.htm#url=\'' + v.URL + '\'"&gt;';
       Text +=  '</'+'textarea><'+'hr>';
       Text +=	'Размеры видеовставки будут совпадать с размерами видеоокна, что сейчас на экране.<br>' +
		'Чтобы изменить их, измените текущий размер видеоокна, потянув мышкой за его правый нижний угол<hr>';
       Text +=	'<center><input type=button value="Копировать" onclick="javaScript:mbuffer.createTextRange().execCommand(\'Copy\')" ><input type=button value="Закрыть" onclick="javaScript:parent.v_popup.hide()" ></center>';
       show_popup(Text);
       }
     }
  }catch(err)
  {}
}

function showCopyPopup_Link()
{
 try
 {
     if (rmxfViewersVid[0])
     {
      var v = rmxfViewersVid[0].rmxfobj;
      if (v)
      {
       Text = " Скопируйте этот текст и используйте как ссылку в публикациях, в письмах или на веб-странице:<center><textarea cols=70 rows=3 "+"id=mbuffer "+" width=590 style='word-wrap:break-word;background-color:Snow'>";
       Text +=	"http://download.vidicor.ru/Viewpage/page1.htm#url='" + v.URL + "'";
       Text +=  '</'+'textarea><'+'hr>';
       Text +=	'<center><input type=button value="Копировать" onclick="javaScript:mbuffer.createTextRange().execCommand(\'Copy\')" ><input type=button value="Закрыть" onclick="javaScript:parent.v_popup.hide()" ></center>';
       show_popup(Text);
       }
     }
  }catch(err)
  {}
}

function parValue(str, par, defaultPar, dequote)
{
 var param = str;
 var park = defaultPar;
 var pos;
  pos = param.indexOf(par+'=');

  if (pos >= 0) 
   {param = param.substring(pos)
   pos=param.indexOf('=');
   param = param.substring(pos+1);
   var ind = param.indexOf('#') ?  param.indexOf('#') : 0;
   var ind2 = param.indexOf('&') ? param.indexOf('&') : 0;
   pos = Math.max (ind, ind2); 
   if (pos > 0) {param = param.substring(0, pos)};
   if (dequote == 1) {param = param.substring(1, param.length-1)}
   park = param
   };

 return park;
}

var url  = parValue(document.URL, 'url', '0', 0);
url = url.replace("'","");

width  = '100%';
height = '100%';


var currentRef = 0;
var defaultRef = currentRef+1;
if (refUrl == undefined) 
var refUrl = new Array();

refUrl[currentRef] = url;

function mplayVideo(url, ref)
{
 protocol  = recvProtocol.value;
 port      = recvPort.value;
 bufferMid = recvbufferMid.value;

 var m_url = GetNormalUrl(refUrl[ref]);

 var bufferDel = bufferDev;
 var bufferMin = parseInt(bufferMid)-bufferDel;
 var bufferMax = parseInt(bufferMid)+parseInt(bufferDel);

    for (var i = 0; i < rmxfViewersVid.length; i++)
    {
      if (rmxfViewersVid[i] != null)
      {
        rmxfViewersVid[i].Destroy();       // ====================
        rmxfViewersVid[i] = null;
      }
    }
      if (rmxfViewerSnd != null)
        rmxfViewerSnd.Destroy();
    

    rmxfViewersVid[currentRef] = new RMXFViewer(m_url,viewerPlace0, 'height='+height,'width='+width, "maintainVideoAspectRatio=0");
}

function onload()   
{
 mplayVideo(url, 0);
}

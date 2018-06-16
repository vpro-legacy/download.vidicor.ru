
var lost_limit = 5;		// процентов
var lost_limit_time = 1000;	// миллисекунд -- интервал между проверками
var cpu_load_limit = 95;	// процентов
var cpu_load_time  = 5;		// секунд

var rmxf_message = "<table height=60% width='100%'><tr><td valign=center><img src='/Viewpage/Images/warning.png'><td align=center><font color='red'>Your channel's width is unsufficiant<br>to receive this stream</font><hr>Please, try:<br>- use another video stream,<br>- choose <b>another reflector</b><br>- contact your <b>provider<b><a href='/help/help.html' onclick='parent.window.open(\"/help/help.html\")' title='Open help'>(Help)</a>";
if (lang == 'ru')
rmxf_message = "<table height=60% width='100%'><tr valign=middle><td valign=middle><img src='/Viewpage/Images/warning.png'></td><td align=center valign=middle><font color='red'><b><big>Ширина вашего интернет-канала недостаточна<br>для просмотра данного видеопотока</big></b></font><hr>Попробуйте:<br>- выбрать подпоток с <b>меньшим битрейтом</b>, или<br>- выбрать <b>другой ретранслятор</b>, или <br>- обратиться к <b>провайдеру</b>.<br><a href='/help/help.html' onclick='parent.window.open(\"/help/help.html\")' title='Открыть помощь'>(Помощь)</a>";

var cpu_message = "<table height=60% width='100%'><tr valign=middle><td valign=middle align=center><img src='/Viewpage/Images/cpu_time.png'></td><td align=center valign=middle><font color='red'><b><big>Your processor is overloaded</big></b></font><hr>Please try:<br>- close some applications,<br>- use lower video substream";
if (lang == 'ru')
cpu_message = "<table height=60% width='100%'><tr valign=middle><td valign=middle align=center><img src='/Viewpage/Images/cpu_time.png'></td><td align=center valign=middle><font color='red'><b><big>Ваш процессор перегружен</big></b></font><hr>Попробуйте: <br>- закрыть часть приложений<br>- выбрать поток с меньшим битрейтом";

var rmxf_message_end = "</td></tr></table>";


function rmxf_test_channel_bandwidth(lost_limit_percent,testing_interval_ms)
{
 lost_limit = lost_limit_percent;
 
 setTimeout ("rmxt_test("+testing_interval_ms+","+lost_limit_percent+")", testing_interval_ms);
}

var v_popup=0;
try{
 if (!v_popup && window && window.createPopup)
 v_popup = window.createPopup();
}
catch(err)
{};


function disconnect_v(i)
{
 var obj = rmxfViewers[i];
 if (obj)
  obj.Disconnect();
 v_popup.hide();
}

function continue_v()
{
 try
 {
  v_popup.hide();
  parent.window.focus();
 }
 catch(err)
 {}
}

function show_popup(Text)
{
  var oBody = v_popup.document.body;  
      oBody.style.backgroundColor = "lightyellow";
      oBody.style.border = "solid black 1px";
      oBody.innerHTML = Text;

        p_h = 250;
        p_w = 600;

        w = document.body.clientWidth;
        h = document.body.clientHeight;
        try {parent.window.focus();}
          catch(err) {};
          try {v_popup.show(w/2 - p_w/2,h/2 - p_h/2,p_w,p_h, document.body);}
          catch(err) {};
}


function rmxt_test(interval, lost)
{
 if (rmxfViewers && ( !rmxf_test_bandwidth_disable ) )
  for (i=0; i<rmxfViewers.length; i++)
  {
   var obj = rmxfViewers[i];
   
   var Buttons = ("<center><br><input type=button value='Disconnect' onclick='parent.disconnect_v(\""+i+"\")'><input type=button value='Continue viewing with freeses' onclick='parent.continue_v()'></span></center><br>"); 
   if (lang == 'ru')
   Buttons = ("<center><br><input type=button value='Отключиться' onclick='parent.disconnect_v(\""+i+"\")'><inp"+"ut type=button value='Продолжить смотреть с \"тормозами\"'  onclick='javaScript:parent.v_popup.hide()'></span></center><br>");
   
   if (obj && obj.rmxfobj && !rmxfViewers[i]["DisableBMonitoring"])
   {
    //Тест полосы пропускания 
    if (obj.rmxfobj.ChannelLost >= lost_limit && obj.rmxfobj.ChannelLost!==100)
    {
     rmxfViewers[i]["DisableBMonitoring"] = 1;
     var Text = "<center><span>"+rmxf_message; 
     Text+=rmxf_message_end;
     Text+=Buttons;
     show_popup(Text);
    }
   }
    /////////////////////////////////////////////////////////////////
    if (obj && obj.rmxfobj)
    {
        if (obj.rmxfobj.CPUUsage >= cpu_load_limit && !rmxfViewers[i]["DisableCpuMonitoring"]) 
        {
         if (!rmxfViewers[i]["CpuOverloaded"]) rmxfViewers[i]["CpuOverloaded"]=1;
         rmxfViewers[i]["CpuOverloaded"]++;
    
         if (rmxfViewers[i]["CpuOverloaded"] > cpu_load_time)	//Система перегружена больше <cpu_load_time> секунд
         {
          rmxfViewers[i]["DisableCpuMonitoring"] = 1;
          var Text = cpu_message; 
          Text+=rmxf_message_end ;
          Text+=Buttons;
          show_popup(Text);
         }
        }
        else
        if (!rmxfViewers[i]["CpuOverloaded"]) rmxfViewers[i]["CpuOverloaded"]=1;
      }
  }

  setTimeout ("rmxt_test("+interval+","+lost+")", interval);
}


var rmxf_test_bandwidth_disable = 0;	//Говорим, что нужно включить тест канала связи
var rmxf_test_cpu_disable = 0;		//Говорим, что нужно включить тест процессора

if (rmxf_test_channel_bandwidth)
rmxf_test_channel_bandwidth(lost_limit, lost_limit_time); //Выдавать сообщение при остаточных потерях в <lost_limit>%, интервал проверки <lost_limit_time> мс

var imgMin = new Image();
	imgMin.src = "../scripts/minimize.gif";
	
	var imgMax = new Image();
	imgMax.src = "../scripts/maximize.gif";

	var fileList = parent.g_FileList;
	
	function Widgets()
	{
		this.GoTo = null;
		this.Search = null;
		this.Details = null;
		this.PNZ = null;

		this.divCount = 0;
		
		this.OpenText = "Collapse all";
		this.OpenAlt = "Collapse all";
		this.ClosedText = "Expand all";
		this.ClosedAlt = "Expand all";

		this.Display = "";
		this.Img = imgMin;
		this.Text = this.OpenText;
		this.Alt = this.OpenAlt;		
		this.ToggleAll = ToggleAll;
		this.ToggleWidget = ToggleWidget;
		this.Add = Add;
	}		

	function Add(div, name)
	{
		tmpStr = "this." + name + " = new Widget(div);"
		div.style.display = "none";		
		eval(tmpStr);		
		var thisWidget = eval("this." + name);
	}

	function Widget(div)
	{
		return div;
	}	

	function ToggleAll()
	{
		var OpenCloseFunc = Widget;

		if(this.Display == "")
		{
			this.Display = "none";
			this.Img = imgMax;
			this.Text = this.ClosedText;
			this.Alt = this.ClosedAlt;
			expparent00.title = this.ClosedAlt;
			OpenCloseFunc = CloseWidget;
		}
		else
		{
			this.Display = "";
			this.Img = imgMin;
			this.Text = this.OpenText;
			this.Alt = this.OpenAlt;
			expparent00.title = this.OpenAlt;
			OpenCloseFunc = OpenWidget;
		}
		exp00.src = this.Img.src;	
		textExp.innerText = this.Text;
		exp00.alt = this.Alt;
	
		if(this.GoTo)
		{
			OpenCloseFunc(this.GoTo)
		}
		if(this.Search)
		{
			OpenCloseFunc(this.Search)
		}
		if(this.Details)
		{
			OpenCloseFunc(this.Details)
		}
		if(this.PNZ)
		{
			OpenCloseFunc(this.PNZ)
		}
	}

	function ToggleNav()
	{
	
		if(divCollapsedNav.style.display == "none")
		{
			divCollapsedNav.style.display = "";
			divOpenNav.style.display = "none";
			parent.frmstOuter.cols = "20,*"
			parent.document.all ('frmToolbar').noResize = true;
		}
		else
		{
			divOpenNav.style.display = "";
			divCollapsedNav.style.display = "none";
			parent.frmstOuter.cols = "237,*"
			parent.document.all ('frmToolbar').noResize = false;
		}
	}
	
	function ToggleWidget(div)
	{
		
		if(div.style.display == "none")
		{	
			OpenWidget(div);			
		}
		else
		{
			CloseWidget(div);
		}
	}

	function OpenWidget(div)
	{
//		document.all(div.img).src = imgMin.src;
		div.style.display = "";                             //commented by - krishna,  script not working in new browser 
//		document.all(div.img).alt = div.openAlt;
//		document.all(div.img + "1").title = div.openAlt;
//		document.all(div.img + "2").title = div.openAlt;
	}

	function CloseWidget(div)
	{
//		document.all(div.img).src = imgMax.src;
	    div.style.display = "none";                       //commented by - krishna,  script not working in new browser 
//		document.all(div.img).alt = div.closedAlt;
//		document.all(div.img + "1").title = div.closedAlt;
//		document.all(div.img + "2").title = div.closedAlt;
	}

	function load()
	{
		parent.g_WidgetsLoaded = true;
		if (parent.g_LoadingWidgets)
		{
			parent.g_LoadingWidgets = false;
			//parent.location.reload();
		}
	}

	function unload()
	{
		parent.g_LoadingWidgets = true;
	}	
	var widgets = new Widgets();
		
	function ShowAlerts(msgText)
	{
		alert(msgText);
	}
	
/*Function to Open New Modal Dialog */
function ShowPopup(srcScreen,KeyField,OperMode,sTitle,Width,Height)
{
try
{	
	var oWinObject = new Object();
	//var txtElement=window.event.srcElement.id
	var oStatus;
	var sOutLook;
	oWinObject.srcScreen = srcScreen;
	oWinObject.KeyField = KeyField;
	oWinObject.OperMode = OperMode;
    oWinObject.sTitle = sTitle;
    sOutLook="dialogWidth:"+Width+"px;dialogHeight:"+Height+"px;status:no;scroll:no;help:no";
    oStatus = window.showModalDialog('Popup.htm',oWinObject,sOutLook);
    if(oStatus == true) 
    {
    window.refresh();
    return true;
    }
    return false;
   }catch(e){} 
}
/* Function to Open New Modal Dialog With ScrollBars */
function ShowScrollPopup(srcScreen,KeyField,OperMode,sTitle,Width,Height)
{
try{	
	var oWinObject = new Object();
	//var txtElement=window.event.srcElement.id
	var oStatus;	
	var sOutLook;
	oWinObject.srcScreen = srcScreen;
	oWinObject.KeyField = KeyField;
	oWinObject.OperMode = OperMode;
    oWinObject.sTitle = sTitle;
    sOutLook="dialogWidth:"+Width+"px;dialogHeight:"+Height+"px;status:no;scroll:no;help:no";
    oStatus = window.showModalDialog('ScrollPopup.htm',oWinObject,sOutLook);
    
    if(oStatus == true) 
    {
    windows.refresh();
    return true;
    }
    return false;
   }catch(e){} 
}
function fnconfirmation(txt)
{
	 var ret = confirm(txt);
	 return ret;
}
function fnOpenWindow(strUrl)
{
	window.open(strUrl,null,"width=250,height=350,status=no,resizable=no,top=100,left=500,scrollbars=yes,location=no");	
	return false;
}
function fnChangePassword(strUrl)
{
	window.open(strUrl,null,"width=450,height=300,status=no,resizable=no,top=100,left=200,scrollbars=yes,location=no");	
	return false;
}


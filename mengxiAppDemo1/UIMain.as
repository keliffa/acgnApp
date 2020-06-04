package
{
	import flash.display.MovieClip;
	import flash.events.MouseEvent;

	public class UIMain
	{
		public function UIMain()
		{
			
		}
		
		private var object:Object;
		private var comicMain:ComicMain;
		private var communityMain:CommunityMain;
		
		private var bottomButtonMC:MovieClip;
		
		
		
		public function initMain(_object:Object, _comicMain:ComicMain, _communityMain:CommunityMain):void
		{
			object = _object;
			comicMain = _comicMain;
			communityMain = _communityMain;
			bottomButtonMC = new BottomButtonMC();
			object.addChild(bottomButtonMC);
			
			bottomButtonMC.indexBtnMC.addEventListener(MouseEvent.CLICK, indexBtnMC_clickHandler);
			bottomButtonMC.communityBtnMC.addEventListener(MouseEvent.CLICK, communityBtnMC_clickHandler);
			bottomButtonMC.followBtnMC.addEventListener(MouseEvent.CLICK, followBtnMC_clickHandler);
			
			
			indexBtnMC_clickHandler();
			
		}
		
		function indexBtnMC_clickHandler(evt:MouseEvent = null):void
		{
			buttonUIState();
			bottomButtonMC.indexBtnMC.gotoAndStop(2);
			comicMain.initMain(object);
		}
		
		function communityBtnMC_clickHandler(evt:MouseEvent):void
		{
			buttonUIState();
			bottomButtonMC.communityBtnMC.gotoAndStop(2);
			communityMain.initMain(object);
		}
		
		function followBtnMC_clickHandler(evt:MouseEvent):void
		{
			buttonUIState();
			bottomButtonMC.followBtnMC.gotoAndStop(2);
		}
		
		
		function buttonUIState():void
		{
			comicMain.closeMain();
			communityMain.closeMain();
			
			bottomButtonMC.indexBtnMC.gotoAndStop(1);
			bottomButtonMC.followBtnMC.gotoAndStop(1);
			bottomButtonMC.communityBtnMC.gotoAndStop(1);
			bottomButtonMC.settingBtnMC.gotoAndStop(1);
		}
	}
}
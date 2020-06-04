package
{
	import flash.display.DisplayObject;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	
	//[SWF( width = "540", height = "960", frameRate = "30", backgroundColor = "0x3366FF" )]
	
	public class main1 extends Sprite
	{
		
		private var _this:Object = this;
		private var logoMain:LogoMain;
		private var uiMain:UIMain;
		private var comicMain:ComicMain;
		private var communityMain:CommunityMain;
		
		public function main1()
		{
			////////MainMC
			logoMain = new LogoMain();
			logoMain.initMain(_this, initMain);
			
			
			//init()
		}
		
		private function closeMain():void
		{
			
		}
		
		private function initMain():void
		{
			
			comicMain = new ComicMain();
			communityMain = new CommunityMain();
			
			uiMain = new UIMain();
			uiMain.initMain(_this, comicMain, communityMain);
			
			

			
		}
		
		
		
	}
}
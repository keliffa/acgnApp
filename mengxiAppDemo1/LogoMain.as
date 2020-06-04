package
{
	import flash.display.DisplayObject;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;

	public class LogoMain
	{
		
		public function LogoMain()
		{
			
		}
		
		private var object:Object;
		private var logoMC:MovieClip;
		
		public function initMain(_object:Object, initMain:Function):void
		{
			object = _object;
			logoMC = new LogoMC();
			object.addChild(logoMC);
			
			logoMC.addEventListener(MouseEvent.CLICK, mainMC_clickHandler);
			function mainMC_clickHandler(evt:MouseEvent):void
			{
				object.removeChild(logoMC);
				initMain();
				
			}
			
		}
		
	}
}
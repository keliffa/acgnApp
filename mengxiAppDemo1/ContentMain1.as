package
{
	import flash.display.MovieClip;

	public class ContentMain1
	{
		public function ContentMain1()
		{
			
		}
		
		private var object:Object;
		private var contentMainMC:MovieClip;
		public function initMain(_object:Object):void
		{
			object = _object;
			if(contentMainMC == null)
			{
				contentMainMC = new ContentMainMC();
				object.addChild(contentMainMC);
			}
			
		}
		
		public function closeMain():void
		{
			if(contentMainMC != null)
			{
				object.removeChild(contentMainMC);
				contentMainMC = null;
				object = null;
			}
		}
		
	}
}
package
{
	import flash.display.MovieClip;

	public class ContentMain1
	{
		public function ContentMain1()
		{
			
		}
		
		private var object:Object;
		private var comicMainMC:MovieClip;
		public function initMain(_object:Object):void
		{
			object = _object;
			if(comicMainMC == null)
			{
				comicMainMC = new ComicMainMC();
				object.addChild(comicMainMC);
			}
			
		}
		
		public function closeMain():void
		{
			if(comicMainMC != null)
			{
				object.removeChild(comicMainMC);
				comicMainMC = null;
				object = null;
			}
		}
		
	}
}
package
{
	import flash.display.MovieClip;

	public class CommunityMain
	{
		public function CommunityMain()
		{
			
		}
		
		private var object:Object;
		private var communityMainMC:MovieClip;
		public function initMain(_object:Object):void
		{
			object = _object;
			if(communityMainMC == null)
			{
				communityMainMC = new CommunityMainMC();
				object.addChild(communityMainMC);
			}
			
		}
		
		public function closeMain():void
		{
			if(communityMainMC != null)
			{
				object.removeChild(communityMainMC);
				communityMainMC = null;
				object = null;
			}
		}
		
	}
}
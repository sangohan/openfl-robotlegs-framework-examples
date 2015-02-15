package robotlegs.bender.extensions.imag.impl.commands.viewportResize 
{
	import flash.display.Stage;
	import flash.events.Event;
	import robotlegs.bender.bundles.mvcs.Command;
	import robotlegs.bender.extensions.contextView.ContextView;
	import robotlegs.bender.extensions.stage3D.base.api.IViewport;
	
	/**
	 * ...
	 * @author P.J.Shand
	 */
	public class FullStageViewportCommand extends Command 
	{
		[Inject] public var viewport:IViewport;
		[Inject] public var contextView:ContextView;
		private var stage:Stage;
		
		public function FullStageViewportCommand() 
		{
			super();
		}
		
		override public function execute():void
		{
			stage = contextView.view.stage;
			stage.addEventListener(Event.RESIZE, OnStageResize);
		}
		
		private function OnStageResize(e:Event):void 
		{
			viewport.rect.setTo(0, 0, stage.stageWidth, stage.stageHeight);
		}
	}

}
package robotlegs.bender.bundles;

import robotlegs.bender.extensions.stage3D.away3d.AwayIntegrationExtension;
import robotlegs.bender.extensions.stage3D.away3d.AwayStageSyncExtension;
import robotlegs.bender.extensions.stage3D.base.Stage3DStackExtension;
import robotlegs.bender.framework.api.IBundle;
import robotlegs.bender.framework.api.IContext;

class Away3DBundle implements IBundle
{
	/*============================================================================*/
	/* Public Functions                                                           */
	/*============================================================================*/

	/** @inheritDoc **/
	public function extend(context:IContext):Void
	{
		context.install([
			AwayIntegrationExtension,
			AwayStageSyncExtension
		]);
	}
}

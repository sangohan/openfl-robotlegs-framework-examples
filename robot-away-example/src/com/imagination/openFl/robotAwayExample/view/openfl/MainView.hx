package com.imagination.openFl.robotAwayExample.view.openfl;

import openfl.display.Sprite;

/**
 * ...
 * @author P.J.Shand
 */
class MainView extends Sprite
{

	public function new() 
	{
		super();
	}
	
	public function initialize() 
	{
		var subView:SubView = new SubView();
		addChild(subView);
	}
}
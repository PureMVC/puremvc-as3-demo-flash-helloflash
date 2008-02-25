/*
 PureMVC AS3 / Flash Demo - HelloFlash
 By Cliff Hall <clifford.hall@puremvc.org>
 Copyright(c) 2007-08, Some rights reserved.
 */
package 
{
	import flash.display.MovieClip;
	import org.puremvc.as3.demos.flash.helloflash.ApplicationFacade;
	
	public class HelloFlash extends MovieClip
	{
		public function HelloFlash()
		{
			ApplicationFacade.getInstance().startup( this.stage );
		}
	}
}

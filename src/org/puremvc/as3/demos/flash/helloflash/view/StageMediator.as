package org.puremvc.as3.demos.flash.helloflash.view
{
    import flash.events.Event;
    import flash.display.Stage;
	import flash.geom.Rectangle;
	import flash.events.MouseEvent;

    import org.puremvc.as3.interfaces.*;
    import org.puremvc.as3.patterns.mediator.Mediator;

    import org.puremvc.as3.demos.flash.helloflash.ApplicationFacade;
	import org.puremvc.as3.demos.flash.helloflash.view.HelloSpriteMediator;
	import org.puremvc.as3.demos.flash.helloflash.view.components.HelloSprite;
	import org.puremvc.as3.demos.flash.helloflash.model.SpriteDataProxy;
    
    /**
     * A Mediator for interacting with the Stage.
     */
    public class StageMediator extends Mediator implements IMediator
    {
        // Cannonical name of the Mediator
        public static const NAME:String = 'StageMediator';

        /**
         * Constructor. 
         */
        public function StageMediator( viewComponent:Object ) 
        {
            // pass the viewComponent to the superclass where 
            // it will be stored in the inherited viewComponent property
            super( NAME, viewComponent );
    
			// Retrieve reference to frequently consulted Proxies
			spriteDataProxy = facade.retrieveProxy( SpriteDataProxy.NAME ) as SpriteDataProxy;
			
            // Listen for events from the view component 
            stage.addEventListener( MouseEvent.MOUSE_UP, handleMouseUp );
            stage.addEventListener( MouseEvent.MOUSE_WHEEL, handleMouseWheel );
            
        }


        /**
         * List all notifications this Mediator is interested in.
         * <P>
         * Automatically called by the framework when the mediator
         * is registered with the view.</P>
         * 
         * @return Array the list of Nofitication names
         */
        override public function listNotificationInterests():Array 
        {
            return [ ApplicationFacade.STAGE_ADD_SPRITE
                   ];
        }

        /**
         * Handle all notifications this Mediator is interested in.
         * <P>
         * Called by the framework when a notification is sent that
         * this mediator expressed an interest in when registered
         * (see <code>listNotificationInterests</code>.</P>
         * 
         * @param INotification a notification 
         */
        override public function handleNotification( note:INotification ):void 
        {
            switch ( note.getName() ) {
                
                // Create a new HelloSprite, 
				// Create and register its HelloSpriteMediator
				// and finally add the HelloSprite to the stage
                case ApplicationFacade.STAGE_ADD_SPRITE:
					var params:Array = note.getBody() as Array;
					var helloSprite:HelloSprite = new HelloSprite( spriteDataProxy.nextSpriteID, params );
					facade.registerMediator(new HelloSpriteMediator( helloSprite ));
					stage.addChild( helloSprite );
                    break;
            }
        }

		// The user has released the mouse over the stage
        private function handleMouseUp(event:MouseEvent):void
		{
			sendNotification( ApplicationFacade.SPRITE_DROP );
		}
                    
		// The user has released the mouse over the stage
        private function handleMouseWheel(event:MouseEvent):void
		{
			sendNotification( ApplicationFacade.SPRITE_SCALE, event.delta );
		}
                    
        /**
         * Cast the viewComponent to its actual type.
         * 
         * <P>
         * This is a useful idiom for mediators. The
         * PureMVC Mediator class defines a viewComponent
         * property of type Object. </P>
         * 
         * <P>
         * Here, we cast the generic viewComponent to 
         * its actual type in a protected mode. This 
         * retains encapsulation, while allowing the instance
         * (and subclassed instance) access to a 
         * strongly typed reference with a meaningful
         * name.</P>
         * 
         * @return stage the viewComponent cast to flash.display.Stage
         */
        protected function get stage():Stage{
            return viewComponent as Stage;
        }
		
		private var spriteDataProxy:SpriteDataProxy;
    }
}
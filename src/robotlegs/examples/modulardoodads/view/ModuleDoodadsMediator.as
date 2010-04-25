package robotlegs.examples.modulardoodads.view
{
    import flash.events.MouseEvent;
    
    import org.robotlegs.utilities.modular.mvcs.ModuleMediator;
    
    import robotlegs.examples.modulardoodads.common.events.LoggingEvent;
    
    public class ModuleDoodadsMediator extends ModuleMediator
    {
        [Inject]
        public var view:ModularDoodads;
        
        override public function onRegister():void
        {
            eventMap.mapListener(view.logIt, MouseEvent.CLICK, handleLogItClicked);
        }
        
        protected function handleLogItClicked(event:MouseEvent):void
        {
            redispatchToModules(new LoggingEvent(LoggingEvent.MESSAGE, "SHIT BALLS!", null));
        }
    }
}
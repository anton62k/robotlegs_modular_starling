package org.robotlegs.utilities.modular_starling.mvcs
{
	import flash.events.Event;
	import org.robotlegs.mvcs.StarlingCommand;
	import org.robotlegs.utilities.modular_starling.core.IModuleCommandMap;
	import org.robotlegs.utilities.modular_starling.core.IModuleEventDispatcher;
    
    
    public class ModuleCommand extends StarlingCommand
    {
        [Inject]
        public var moduleEventDispatcher:IModuleEventDispatcher;
        
        [Inject]
        public var moduleCommandMap:IModuleCommandMap;
        
        protected function dispatchToModules(event:Event):Boolean
        {
            if(moduleEventDispatcher.hasEventListener(event.type))
                return moduleEventDispatcher.dispatchEvent(event);
            return true;
        }
    }
}
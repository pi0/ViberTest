package com.viber.jni.controller;

import java.util.Map.Entry;

class ControllerListener$1
  implements Runnable
{
  ControllerListener$1(ControllerListener paramControllerListener, ControllerListener.ControllerListenerAction paramControllerListenerAction, Map.Entry paramEntry) {}
  
  public void run()
  {
    this.val$action.execute(this.val$t.getKey());
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.controller.ControllerListener.1
 * JD-Core Version:    0.7.0.1
 */
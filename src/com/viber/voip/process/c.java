package com.viber.voip.process;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;

public abstract class c
{
  public abstract void doInTargetProcess(Bundle paramBundle, b paramb);
  
  protected void execute(Context paramContext, Class<? extends c> paramClass, Bundle paramBundle)
  {
    Intent localIntent = new Intent(getTargetProcessReceiverAction());
    localIntent.putExtra("class", paramClass.getName());
    if (paramBundle != null) {
      localIntent.putExtra("data", paramBundle);
    }
    String str = ProcessBoundTasks.a();
    localIntent.putExtra("reply_action", str);
    ProcessBoundTasks.a("1. execute(), class: " + paramClass + ", replyAction:" + str);
    d locald = new d(this, paramClass);
    paramContext.getApplicationContext().registerReceiver(locald, new IntentFilter(str));
    paramContext.getApplicationContext().sendBroadcast(localIntent);
  }
  
  protected String getTargetProcessReceiverAction()
  {
    return "com.viber.voip.action.MainProcessTasks";
  }
  
  public abstract void processResult(Bundle paramBundle);
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.process.c
 * JD-Core Version:    0.7.0.1
 */
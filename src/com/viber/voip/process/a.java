package com.viber.voip.process;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

class a
  implements b
{
  a(ProcessBoundTasks paramProcessBoundTasks, String paramString1, String paramString2, Context paramContext) {}
  
  public void a(Bundle paramBundle)
  {
    ProcessBoundTasks.a("3. onPerformReply for " + this.a);
    Intent localIntent = new Intent(this.b);
    localIntent.putExtra("data", paramBundle);
    this.c.sendBroadcast(localIntent);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.process.a
 * JD-Core Version:    0.7.0.1
 */
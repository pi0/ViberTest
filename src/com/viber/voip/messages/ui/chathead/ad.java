package com.viber.voip.messages.ui.chathead;

import android.os.Handler;
import android.util.Log;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.controller.df;
import java.util.Set;

class ad
  implements df
{
  ad(d paramd) {}
  
  public void a(long paramLong1, long paramLong2, long paramLong3, boolean paramBoolean)
  {
    Log.i(d.c(), "onNew: " + String.valueOf(paramLong1));
    dc.a(dk.a).post(new ae(this, paramLong1));
  }
  
  public void a(long paramLong1, long paramLong2, boolean paramBoolean) {}
  
  public void a(String paramString, boolean paramBoolean) {}
  
  public void a(Set<Long> paramSet, boolean paramBoolean) {}
  
  public void b(Set<Long> paramSet, boolean paramBoolean) {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.ad
 * JD-Core Version:    0.7.0.1
 */
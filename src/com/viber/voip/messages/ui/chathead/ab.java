package com.viber.voip.messages.ui.chathead;

import android.os.Handler;
import android.util.Log;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.controller.db;
import java.util.Set;

class ab
  implements db
{
  ab(d paramd) {}
  
  public void a(Set<Long> paramSet, boolean paramBoolean) {}
  
  public void b(Set<Long> paramSet, boolean paramBoolean) {}
  
  public void c(Set<Long> paramSet, boolean paramBoolean)
  {
    Log.i(d.c(), "onRead: " + String.valueOf(paramSet));
    dc.a(dk.a).post(new ac(this, paramSet));
  }
  
  public void d(Set<Long> paramSet, boolean paramBoolean) {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.ab
 * JD-Core Version:    0.7.0.1
 */
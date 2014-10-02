package com.android.a.a;

import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;

public class b
{
  private String a;
  private d b;
  private HandlerThread c;
  
  protected b(String paramString)
  {
    this.c = new HandlerThread(paramString);
    this.c.start();
    a(paramString, this.c.getLooper());
  }
  
  private void a(String paramString, Looper paramLooper)
  {
    this.a = paramString;
    this.b = new d(paramLooper, this, null);
  }
  
  public final Message a(int paramInt)
  {
    return Message.obtain(this.b, paramInt);
  }
  
  protected void a() {}
  
  protected void a(Message paramMessage) {}
  
  protected final void a(a parama)
  {
    d.a(this.b, parama, null);
  }
  
  protected final void a(a parama1, a parama2)
  {
    d.a(this.b, parama1, parama2);
  }
  
  protected void b() {}
  
  public final void b(int paramInt)
  {
    this.b.sendMessage(a(paramInt));
  }
  
  protected void b(Message paramMessage) {}
  
  protected final void b(a parama)
  {
    d.a(this.b, parama);
  }
  
  public void c()
  {
    d.b(this.b);
  }
  
  protected final void c(a parama)
  {
    d.b(this.b, parama);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.android.a.a.b
 * JD-Core Version:    0.7.0.1
 */
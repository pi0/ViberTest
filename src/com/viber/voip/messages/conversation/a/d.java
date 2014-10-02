package com.viber.voip.messages.conversation.a;

import android.view.LayoutInflater;
import android.view.View;
import java.util.LinkedList;
import java.util.Queue;

public class d
{
  private final int b;
  private final int c;
  private final c d;
  private final Queue<View> e = new LinkedList();
  private Runnable f = new e(this);
  
  private d(a parama, int paramInt1, int paramInt2, c paramc)
  {
    this.c = paramInt2;
    this.b = paramInt1;
    this.d = paramc;
    b();
  }
  
  private void b() {}
  
  private View c()
  {
    View localView = a.a(this.a).inflate(this.c, null);
    if (this.d != null) {
      localView.setTag(this.d.a(localView, this.b));
    }
    return localView;
  }
  
  public View a()
  {
    return c();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.a.d
 * JD-Core Version:    0.7.0.1
 */
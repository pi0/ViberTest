package com.viber.voip.widget;

import com.viber.voip.messages.controller.c.e;
import com.viber.voip.messages.controller.di;

class c
  extends di
{
  c(FollowPublicGroupLayout paramFollowPublicGroupLayout) {}
  
  public void a(int paramInt, long paramLong)
  {
    if (FollowPublicGroupLayout.a(this.a) == paramInt)
    {
      e.a().b(this);
      if (FollowPublicGroupLayout.b(this.a) != null) {
        FollowPublicGroupLayout.b(this.a).a(FollowPublicGroupLayout.c(this.a));
      }
    }
  }
  
  public void c(int paramInt1, int paramInt2)
  {
    if (FollowPublicGroupLayout.a(this.a) == paramInt1) {
      e.a().b(this);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.widget.c
 * JD-Core Version:    0.7.0.1
 */
package com.viber.voip.messages.controller;

import android.os.Handler;
import com.viber.voip.dc;
import com.viber.voip.dk;

public class c
  implements GroupController
{
  private final GroupController a;
  private final Handler b;
  
  public c(Handler paramHandler, GroupController paramGroupController)
  {
    this.a = paramGroupController;
    this.b = paramHandler;
  }
  
  private void a(q paramq)
  {
    this.b.postAtFrontOfQueue(new d(this, paramq));
  }
  
  public void a(double paramDouble1, double paramDouble2, long paramLong1, long paramLong2)
  {
    a(new f(this, paramDouble1, paramDouble2, paramLong1, paramLong2));
  }
  
  public void a(int paramInt1, long paramLong, int paramInt2)
  {
    dc.a(dk.g).postAtFrontOfQueue(new h(this, paramInt1, paramLong, paramInt2));
  }
  
  public void a(int paramInt1, long paramLong1, int paramInt2, String paramString1, String paramString2, long paramLong2, String paramString3)
  {
    dc.a(dk.g).postAtFrontOfQueue(new e(this, paramInt1, paramLong1, paramInt2, paramString1, paramString2, paramLong2, paramString3));
  }
  
  public void a(int paramInt, long paramLong, GroupController.PublicGroupChanger paramPublicGroupChanger)
  {
    a(new o(this, paramInt, paramLong, paramPublicGroupChanger));
  }
  
  public void a(int paramInt, long paramLong, GroupController.GroupMember[] paramArrayOfGroupMember)
  {
    a(new m(this, paramInt, paramLong, paramArrayOfGroupMember));
  }
  
  public void a(int paramInt, GroupController.CreatePublicGroupData paramCreatePublicGroupData)
  {
    a(new n(this, paramInt, paramCreatePublicGroupData));
  }
  
  public void a(int paramInt, GroupController.GroupMember[] paramArrayOfGroupMember)
  {
    a(new i(this, paramInt, paramArrayOfGroupMember));
  }
  
  public void a(long paramLong, int paramInt)
  {
    a(new p(this, paramLong, paramInt));
  }
  
  public void a(long paramLong, String paramString)
  {
    a(new l(this, paramLong, paramString));
  }
  
  public void a(long paramLong, String paramString1, String paramString2)
  {
    a(new j(this, paramLong, paramString1, paramString2));
  }
  
  public void a(long paramLong, boolean paramBoolean)
  {
    a(new k(this, paramLong, paramBoolean));
  }
  
  public void b(long paramLong, String paramString)
  {
    dc.a(dk.k).postAtFrontOfQueue(new g(this, paramLong, paramString));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.c
 * JD-Core Version:    0.7.0.1
 */
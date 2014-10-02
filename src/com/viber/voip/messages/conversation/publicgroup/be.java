package com.viber.voip.messages.conversation.publicgroup;

import android.text.TextUtils;
import com.viber.jni.LocationInfo;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.controller.GroupController;
import com.viber.voip.messages.controller.GroupController.PublicGroupChanger;
import com.viber.voip.messages.i;
import com.viber.voip.util.bk;
import java.util.Arrays;

public class be
{
  private static final String a = be.class.getSimpleName();
  private long b;
  private int c;
  private int d;
  private String e;
  private long f;
  private long g;
  private String h;
  private String[] i;
  private LocationInfo j;
  private String k;
  
  public be(PublicGroupDataLoaderEntity paramPublicGroupDataLoaderEntity)
  {
    this.b = paramPublicGroupDataLoaderEntity.o();
    this.d = paramPublicGroupDataLoaderEntity.Q();
    this.e = paramPublicGroupDataLoaderEntity.d();
    this.h = paramPublicGroupDataLoaderEntity.L();
    this.i = paramPublicGroupDataLoaderEntity.M();
    this.j = new LocationInfo(paramPublicGroupDataLoaderEntity.N(), paramPublicGroupDataLoaderEntity.O());
    this.k = paramPublicGroupDataLoaderEntity.P();
  }
  
  private static void d(String paramString) {}
  
  public void a(long paramLong)
  {
    if (this.f != paramLong)
    {
      this.f = paramLong;
      this.c = (0x2 | this.c);
    }
  }
  
  public void a(LocationInfo paramLocationInfo)
  {
    if (((this.j != null) && (paramLocationInfo == null)) || ((this.j == null) && (paramLocationInfo != null)) || ((this.j != null) && (paramLocationInfo != null) && ((this.j.lat() != paramLocationInfo.lat()) || (this.j.lng() != this.j.lng()))))
    {
      this.j = paramLocationInfo;
      this.c = (0x20 | this.c);
    }
  }
  
  public void a(String paramString)
  {
    if (!TextUtils.equals(this.e, paramString))
    {
      this.e = paramString;
      this.c = (0x1 | this.c);
    }
  }
  
  public void a(String[] paramArrayOfString)
  {
    if (!Arrays.equals(this.i, paramArrayOfString))
    {
      this.i = paramArrayOfString;
      this.c = (0x10 | this.c);
    }
  }
  
  public boolean a()
  {
    return bk.a(this.c, new int[] { 2 });
  }
  
  public boolean a(int paramInt)
  {
    if (this.c != 0)
    {
      GroupController.PublicGroupChanger localPublicGroupChanger = new GroupController.PublicGroupChanger(this.j, this.k, this.e, this.i, this.h, this.f, this.g, this.d, this.c, this.b);
      ViberApplication.getInstance().getMessagesManager().d().a(paramInt, this.b, localPublicGroupChanger);
      return true;
    }
    d("update(): params unchanged, not updating");
    return false;
  }
  
  public void b(long paramLong)
  {
    if (this.g != paramLong)
    {
      this.g = paramLong;
      this.c = (0x4 | this.c);
    }
  }
  
  public void b(String paramString)
  {
    if (!TextUtils.equals(this.h, paramString))
    {
      this.h = paramString;
      this.c = (0x8 | this.c);
    }
  }
  
  public boolean b()
  {
    return bk.a(this.c, new int[] { 4 });
  }
  
  public void c(String paramString)
  {
    if (!TextUtils.equals(this.k, paramString))
    {
      this.k = paramString;
      this.c = (0x40 | this.c);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.be
 * JD-Core Version:    0.7.0.1
 */
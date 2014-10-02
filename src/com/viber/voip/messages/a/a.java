package com.viber.voip.messages.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import com.viber.voip.messages.conversation.ui.ct;
import com.viber.voip.messages.orm.entity.impl.ParticipantInfoEntityImpl;
import java.util.Collection;
import java.util.Set;

public abstract interface a
{
  public abstract Bitmap a(Context paramContext, int paramInt1, int paramInt2, int paramInt3, long paramLong, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl);
  
  public abstract Uri a(long paramLong, boolean paramBoolean);
  
  public abstract Uri a(String paramString, boolean paramBoolean);
  
  public abstract ParticipantInfoEntityImpl a(Uri paramUri, String paramString);
  
  public abstract ParticipantInfoEntityImpl a(Uri paramUri, String paramString1, String paramString2);
  
  public abstract String a(Resources paramResources, ct paramct);
  
  public abstract String a(Resources paramResources, Collection<ct> paramCollection);
  
  public abstract String a(String paramString, int paramInt);
  
  public abstract void a();
  
  public abstract void a(Set<String> paramSet);
  
  public abstract String b(String paramString, boolean paramBoolean);
  
  public abstract void b();
  
  public abstract void b(Set<Long> paramSet);
  
  public abstract void c();
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.a.a
 * JD-Core Version:    0.7.0.1
 */
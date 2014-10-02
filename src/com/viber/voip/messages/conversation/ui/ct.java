package com.viber.voip.messages.conversation.ui;

import android.content.res.Resources;
import com.viber.jni.ClientMessages.DeviceTypes;

public class ct
{
  private String a;
  private int b;
  private boolean c;
  
  public ct(String paramString, int paramInt, boolean paramBoolean)
  {
    this.a = paramString;
    this.b = paramInt;
    this.c = paramBoolean;
  }
  
  public String a()
  {
    return this.a;
  }
  
  public String a(Resources paramResources)
  {
    return ClientMessages.DeviceTypes.toString(this.b, paramResources);
  }
  
  public boolean b()
  {
    return this.c;
  }
  
  public boolean c()
  {
    return (b()) && (ClientMessages.DeviceTypes.isVisibleInTyping(this.b));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ui.ct
 * JD-Core Version:    0.7.0.1
 */
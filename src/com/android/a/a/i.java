package com.android.a.a;

import android.os.Message;

public class i
{
  private int b;
  private a c;
  private a d;
  
  i(h paramh, Message paramMessage, a parama1, a parama2)
  {
    a(paramMessage, parama1, parama2);
  }
  
  private String a(Object paramObject)
  {
    if (paramObject == null) {
      return "null";
    }
    String str = paramObject.getClass().getName();
    return str.substring(1 + str.lastIndexOf('$'));
  }
  
  public void a(Message paramMessage, a parama1, a parama2)
  {
    this.b = paramMessage.what;
    this.c = parama1;
    this.d = parama2;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("what=");
    localStringBuilder.append(this.b);
    localStringBuilder.append(" state=");
    localStringBuilder.append(a(this.c));
    localStringBuilder.append(" orgState=");
    localStringBuilder.append(a(this.d));
    return localStringBuilder.toString();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.android.a.a.i
 * JD-Core Version:    0.7.0.1
 */
package com.viber.voip.messages;

public class f
{
  protected String a;
  protected String b;
  
  public f(String paramString1, String paramString2)
  {
    this.a = paramString1;
    this.b = paramString2;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((this.a != null) && ((paramObject instanceof f))) {
      return this.a.equals(((f)paramObject).a);
    }
    return super.equals(paramObject);
  }
  
  public int hashCode()
  {
    if (this.a != null) {
      return this.a.hashCode();
    }
    return super.hashCode();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.f
 * JD-Core Version:    0.7.0.1
 */
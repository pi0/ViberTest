package com.viber.voip.contacts.c;

class s
{
  String a;
  r b;
  
  public s(String paramString, r paramr)
  {
    this.a = paramString;
    this.b = paramr;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    while ((!(paramObject instanceof s)) || (!this.a.equals(((s)paramObject).a))) {
      return false;
    }
    return true;
  }
  
  public String toString()
  {
    return "DownloadItem [value = " + this.a + "]";
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.c.s
 * JD-Core Version:    0.7.0.1
 */
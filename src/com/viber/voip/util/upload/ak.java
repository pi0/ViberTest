package com.viber.voip.util.upload;

public enum ak
{
  private String g;
  
  static
  {
    ak[] arrayOfak = new ak[6];
    arrayOfak[0] = a;
    arrayOfak[1] = b;
    arrayOfak[2] = c;
    arrayOfak[3] = d;
    arrayOfak[4] = e;
    arrayOfak[5] = f;
    h = arrayOfak;
  }
  
  private ak(String paramString)
  {
    this.g = paramString;
  }
  
  public String a()
  {
    return this.g;
  }
  
  public String b()
  {
    switch (ag.a[ordinal()])
    {
    default: 
      return null;
    case 1: 
      return "icon";
    case 2: 
      return "bg";
    }
    return "media";
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.upload.ak
 * JD-Core Version:    0.7.0.1
 */
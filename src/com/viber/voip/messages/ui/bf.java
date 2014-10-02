package com.viber.voip.messages.ui;

import android.util.SparseArray;
import com.viber.voip.w;
import java.util.Map;

public class bf
{
  private String a;
  private Character b;
  private String c;
  
  private bf(String paramString, Character paramCharacter)
  {
    this.a = paramString;
    this.b = paramCharacter;
    bd.h().put(paramString.toLowerCase(), this);
    bd.i().put(paramCharacter.toString(), this);
    this.c = paramString;
  }
  
  private bf a(int paramInt)
  {
    bd.j().put(paramInt, this);
    return this;
  }
  
  private bf a(String paramString)
  {
    this.c = paramString;
    return this;
  }
  
  private bf b(String paramString)
  {
    bd.k().put(paramString, this);
    return this;
  }
  
  private String c()
  {
    return w.x + this.c + "_scaled_" + bd.a + ".png";
  }
  
  private String d()
  {
    return "emoticons/" + this.c + ".png";
  }
  
  public String a()
  {
    return this.a;
  }
  
  public Character b()
  {
    return this.b;
  }
  
  public boolean equals(Object paramObject)
  {
    return ((paramObject instanceof bf)) && (this.a.equals(((bf)paramObject).a()));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.bf
 * JD-Core Version:    0.7.0.1
 */
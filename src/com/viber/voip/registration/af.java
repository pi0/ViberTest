package com.viber.voip.registration;

import com.viber.voip.ViberApplication;
import com.viber.voip.sms.a;
import com.viber.voip.sms.i;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class af
  implements i
{
  private final String a;
  private final o b;
  private final Pattern c;
  private final Pattern d;
  private a e;
  
  public af(o paramo)
  {
    this(paramo, "Viber", 4);
  }
  
  private af(o paramo, String paramString, int paramInt)
  {
    if (paramo == null) {
      throw new IllegalArgumentException("The listener argument is null");
    }
    if (paramString == null) {
      throw new IllegalArgumentException("The requiredText argument is null");
    }
    if (paramInt < 1) {
      throw new IllegalArgumentException("The codeLength argument less than 1");
    }
    this.b = paramo;
    this.a = paramString.toLowerCase();
    this.c = Pattern.compile("(\\d{" + paramInt + "})(?=[^\\d]*|$)");
    this.d = Pattern.compile("((\\s)||(.))*(((:(\\w{1,2})|([\\r\\n]))\\d{4})|(" + this.a + "))" + "((\\s)||(.))*");
    this.e = ViberApplication.getInstance().getSmsDbManager();
  }
  
  private String a(String paramString)
  {
    if (this.d.matcher(paramString.toLowerCase()).matches())
    {
      Matcher localMatcher = this.c.matcher(paramString);
      if (localMatcher.find()) {
        return localMatcher.group(1);
      }
    }
    return null;
  }
  
  public void a()
  {
    this.e.a(this);
  }
  
  public void a(int paramInt, String paramString1, String paramString2)
  {
    this.e.a(paramInt);
    String str = a(paramString2);
    if (str != null) {
      this.b.a(str);
    }
  }
  
  public void b()
  {
    this.e.b(this);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.af
 * JD-Core Version:    0.7.0.1
 */
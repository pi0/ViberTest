package com.viber.voip.messages.extras.fb;

class ai
{
  private final long b;
  private final String c;
  private final String d;
  private final String e;
  private final int f;
  
  public ai(s params, long paramLong, String paramString1, String paramString2, String paramString3, int paramInt)
  {
    this.b = paramLong;
    this.c = paramString1;
    this.d = paramString2;
    this.e = paramString3;
    this.f = paramInt;
  }
  
  public void a(String paramString)
  {
    s.b("FacebookManager$SharingListener.onComplete: " + paramString);
    s.b(this.a, this.b, this.c, this.d, this.e, this.f);
  }
  
  public void b(String paramString)
  {
    s.b("FacebookManager$SharingListener.onFacebookError: " + paramString);
    s.a(this.a, this.b, this.c, this.d, this.e, this.f, new Throwable(paramString));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.extras.fb.ai
 * JD-Core Version:    0.7.0.1
 */
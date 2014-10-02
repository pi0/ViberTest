package com.viber.voip.messages.extras.twitter;

class s
  implements e
{
  s(l paraml) {}
  
  public void a(String paramString)
  {
    l.a(this.a, "onVerifierReceived() verifier=" + paramString);
    if (paramString != null) {
      new u(this.a, null).execute(new String[] { paramString });
    }
  }
  
  public void b(String paramString)
  {
    l.a(this.a, "onErrorReceived() message: " + paramString);
    l.a(this.a, paramString, true);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.extras.twitter.s
 * JD-Core Version:    0.7.0.1
 */
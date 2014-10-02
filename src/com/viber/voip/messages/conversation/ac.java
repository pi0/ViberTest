package com.viber.voip.messages.conversation;

class ac
  implements Runnable
{
  ac(ab paramab, h paramh) {}
  
  public void run()
  {
    w.a(this.b.a, "onObtain mCallback = " + w.a(this.b.a));
    if (w.a(this.b.a) != null)
    {
      w.a(this.b.a).a(this.a, false, true);
      w.a(this.b.a, this.a.a());
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ac
 * JD-Core Version:    0.7.0.1
 */
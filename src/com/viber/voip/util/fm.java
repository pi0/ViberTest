package com.viber.voip.util;

import android.os.Message;

class fm
  implements Runnable
{
  final Message a;
  final fe b;
  
  public fm(fe paramfe, Message paramMessage)
  {
    this.b = paramfe;
    this.a = Message.obtain(paramMessage);
  }
  
  public void run()
  {
    fe.a(this.b, this.b, this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.fm
 * JD-Core Version:    0.7.0.1
 */
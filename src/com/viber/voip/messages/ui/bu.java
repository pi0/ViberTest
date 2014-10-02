package com.viber.voip.messages.ui;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.widget.EditText;
import android.widget.Toast;
import com.viber.voip.stickers.r;

class bu
  implements Runnable
{
  bu(bt parambt, ProgressDialog paramProgressDialog) {}
  
  public void run()
  {
    Context localContext;
    StringBuilder localStringBuilder;
    try
    {
      int i = Integer.parseInt(this.b.a.getText().toString());
      if (r.a().m(i)) {
        MessageComposerView.p(this.b.b).postAtFrontOfQueue(new bv(this, i));
      }
      for (;;)
      {
        this.a.cancel();
        return;
        Toast.makeText(MessageComposerView.o(this.b.b), "Sticker with id " + i + " doesn't exist", 0).show();
      }
      str = " Unknown error, try again";
    }
    catch (Exception localException)
    {
      localContext = MessageComposerView.o(this.b.b);
      localStringBuilder = new StringBuilder().append("Error: ");
      if (!TextUtils.isEmpty(localException.getMessage())) {}
    }
    for (;;)
    {
      Toast.makeText(localContext, str, 1).show();
      break;
      String str = localException.getMessage();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.bu
 * JD-Core Version:    0.7.0.1
 */
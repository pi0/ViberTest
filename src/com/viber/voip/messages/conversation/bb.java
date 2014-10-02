package com.viber.voip.messages.conversation;

import android.os.Handler;
import android.text.Editable;
import android.text.Spannable;
import com.viber.voip.widget.aa;
import com.viber.voip.widget.ae;

class bb
  implements ae
{
  bb(ax paramax, Runnable paramRunnable) {}
  
  public void a(int paramInt1, int paramInt2)
  {
    ax.a("onSelectionChanged " + paramInt1 + " " + paramInt2);
    int i = ax.a(this.b).getText().length();
    int j = 0;
    if (paramInt1 < i)
    {
      if (ax.a(this.b).getText().charAt(paramInt1) != ' ') {
        break label284;
      }
      j = 0;
      if (paramInt1 > 0)
      {
        int k = ax.a(this.b).getText().charAt(paramInt1 - 1);
        j = 0;
        if (k == 32) {
          ax.d(this.b).post(new bc(this, paramInt1));
        }
      }
    }
    for (;;)
    {
      if ((j == 0) && (ax.b(this.b) != paramInt1))
      {
        if ((ax.a(this.b, ax.b(this.b), ax.c(this.b))) && (!ax.c(this.b).a(paramInt1)))
        {
          bj[] arrayOfbj = (bj[])ax.a(this.b).getText().getSpans(ax.c(this.b).a, ax.c(this.b).b, bj.class);
          if ((arrayOfbj == null) || (arrayOfbj.length == 0)) {
            ax.d(this.b).post(new bd(this));
          }
        }
        ax.a(this.b, paramInt1);
        ax.d(this.b).post(this.a);
      }
      return;
      label284:
      if (paramInt1 != 0)
      {
        j = 0;
        if (paramInt1 > 0)
        {
          int m = ax.a(this.b).getText().charAt(paramInt1 - 1);
          j = 0;
          if (m != 32) {}
        }
      }
      else
      {
        for (int n = paramInt1; (n < ax.a(this.b).getText().length()) && (ax.a(this.b).getText().charAt(n) != ' '); n++) {}
        ax.a("selection will be corrected to " + n + ", curLen:" + ax.a(this.b).getText().length());
        ax.b(this.b, n);
        j = 1;
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.bb
 * JD-Core Version:    0.7.0.1
 */
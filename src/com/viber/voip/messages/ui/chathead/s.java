package com.viber.voip.messages.ui.chathead;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.graphics.Point;
import android.telephony.TelephonyManager;
import android.view.View;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import com.nineoldandroids.animation.AnimatorSet;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.ui.chathead.a.a;
import com.viber.voip.messages.ui.chathead.a.l;
import com.viber.voip.util.gl;
import java.util.ArrayList;
import java.util.Iterator;

class s
  extends BroadcastReceiver
{
  s(d paramd) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    boolean bool = true;
    if (paramIntent.getAction().equals("android.intent.action.CONFIGURATION_CHANGED")) {
      if (d.r(this.a)) {}
    }
    label24:
    label154:
    label247:
    label252:
    do
    {
      do
      {
        do
        {
          break label24;
          for (;;)
          {
            return;
            if ((d.P(this.a) == null) || (!d.P(this.a).isRunning()))
            {
              d.i(this.a).setVisibility(4);
              float f1;
              float f2;
              if (d.u(this.a).x <= 0)
              {
                f1 = 0.0F;
                f2 = d.u(this.a).y / d.Q(this.a);
                d.c(this.a, d.c(this.a).p.x);
                d.d(this.a, d.c(this.a).p.y);
                d locald = this.a;
                if (gl.e(paramContext)) {
                  break label247;
                }
                d.e(locald, bool);
                d.R(this.a);
                d.S(this.a);
                d.B(this.a).updateViewLayout(d.j(this.a), d.T(this.a));
                if (!d.a(this.a).isShowing()) {
                  break label252;
                }
              }
              for (;;)
              {
                if (!d.U(this.a)) {
                  break label532;
                }
                d.V(this.a);
                d.f(this.a, false);
                return;
                f1 = 1.0F;
                break;
                bool = false;
                break label154;
                WindowManager.LayoutParams localLayoutParams1 = d.u(this.a);
                if (f1 == 0.0F) {}
                for (int i = -d.c(this.a).t;; i = d.f(this.a) - d.c(this.a).b + d.c(this.a).t)
                {
                  localLayoutParams1.x = i;
                  int j = (int)(f2 * d.Q(this.a));
                  if (j > d.Q(this.a) - d.c(this.a).b) {
                    j -= d.c(this.a).b;
                  }
                  WindowManager.LayoutParams localLayoutParams2 = d.u(this.a);
                  if (j < 0) {
                    j = 0;
                  }
                  localLayoutParams2.y = j;
                  d.B(this.a).updateViewLayout(d.i(this.a), d.u(this.a));
                  Iterator localIterator = d.t(this.a).iterator();
                  while (localIterator.hasNext())
                  {
                    b localb = (b)localIterator.next();
                    ay.a(localb.a(), d.u(this.a).x);
                    ay.b(localb.a(), d.u(this.a).y);
                  }
                }
                if (!d.U(this.a)) {
                  d.i(this.a).setVisibility(0);
                }
                d.o(this.a).setVisibility(4);
              }
            }
          }
          if (paramIntent.getAction().equals("com.viber.voip.action.POPUP_SERVICE_ACTION"))
          {
            d.a(this.a, false);
            d.a(this.a).dismiss();
            return;
          }
          if (paramIntent.getAction().equals("android.intent.action.PHONE_STATE"))
          {
            d.a(this.a, new au(this.a, null));
            d.a(this.a, (TelephonyManager)paramContext.getSystemService("phone"));
            d.X(this.a).listen(d.W(this.a), 32);
            return;
          }
          if (!paramIntent.getAction().equals("android.intent.action.SCREEN_ON")) {
            break;
          }
          d.g(this.a, false);
        } while (!ViberApplication.getInstance().isOnForeground());
        d.a(this.a, d.k(this.a));
        return;
        if (paramIntent.getAction().equals("android.intent.action.SCREEN_OFF"))
        {
          d.a("mRotationReceiver: ACTION_SCREEN_OFF");
          d.a(this.a).j();
          d.g(this.a, bool);
          return;
        }
        if (paramIntent.getAction().equals("android.intent.action.USER_PRESENT"))
        {
          d.i(this.a).invalidate();
          d.B(this.a).updateViewLayout(d.i(this.a), d.u(this.a));
          return;
        }
      } while (!paramIntent.getAction().equals("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
      d.a("mRotationReceiver : ACTION_CLOSE_SYSTEM_DIALOGS");
    } while (d.n(this.a));
    label532:
    d.a(this.a).j();
    d.a(this.a, false);
    d.h(this.a, bool);
    d.a(this.a).dismiss();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.chathead.s
 * JD-Core Version:    0.7.0.1
 */
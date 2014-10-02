package com.viber.voip.phone.b;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.dialer.DialerController;
import com.viber.service.b;
import com.viber.voip.ViberApplication;
import com.viber.voip.phone.CallCard;
import com.viber.voip.phone.PhoneActivity;
import com.viber.voip.phone.call.CallerInfo;
import com.viber.voip.phone.call.a;
import com.viber.voip.phone.call.k;
import com.viber.voip.phone.call.l;
import com.viber.voip.phone.call.n;
import com.viber.voip.sound.ISoundService;
import com.viber.voip.util.gl;
import com.viber.voip.viberout.e;
import java.util.Arrays;

public class j
  extends ah
  implements View.OnClickListener
{
  private static int[][] l = { { 2131165324, 8 }, { 2131165320, 0 }, { 2131165327, 8 }, { 2131165325, 8 }, { 2131165319, 8 } };
  private static int[][] m = { { 2131165324, 8 }, { 2131165320, 8 }, { 2131165327, 8 }, { 2131165325, 8 }, { 2131165319, 8 } };
  private int[][] c = { { 2131165324, 8 }, { 2131165320, 8 }, { 2131165326, 8 }, { 2131165327, 8 }, { 2131165325, 8 }, { 2131165319, 8 } };
  private int[][] f = { { 2131165324, 0 }, { 2131165320, 0 }, { 2131165326, 8 }, { 2131165327, 8 }, { 2131165325, 8 }, { 2131165319, 8 } };
  private int[][] g = { { 2131165324, 0 }, { 2131165320, 0 }, { 2131165327, 8 }, { 2131165325, 0 }, { 2131165319, 0 } };
  private int[][] h = { { 2131165324, 0 }, { 2131165320, 0 }, { 2131165327, 8 }, { 2131165325, 8 }, { 2131165319, 8 } };
  private int[][] i = { { 2131165324, 8 }, { 2131165320, 8 }, { 2131165326, 8 }, { 2131165327, 8 }, { 2131165325, 8 }, { 2131165319, 8 } };
  private int[][] j = { { 2131165324, 0 }, { 2131165320, 0 }, { 2131165327, 8 }, { 2131165325, 0 }, { 2131165319, 0 } };
  private int[][] k = { { 2131165324, 8 }, { 2131165320, 8 }, { 2131165327, 8 }, { 2131165325, 8 }, { 2131165319, 8 } };
  private int[] n = { 0, 1, 2, 3, 7 };
  private Button o;
  private View p;
  private View q;
  private View r;
  private Button s;
  private a t = ViberApplication.getInstance().getPhoneController(true).getCallHandler();
  private DialerController u = ViberApplication.getInstance().getPhoneController(true).getDialerController();
  private ISoundService v = ViberApplication.getInstance().getSoundService();
  private View w;
  private CallCard x;
  private k y;
  private Drawable z;
  
  public j(View paramView, PhoneActivity paramPhoneActivity)
  {
    super(paramView, paramPhoneActivity);
    this.o = ((Button)paramView.findViewById(2131165324));
    this.p = paramView.findViewById(2131165327);
    this.q = paramView.findViewById(2131165320);
    this.s = ((Button)paramView.findViewById(2131165325));
    this.r = paramView.findViewById(2131165319);
    this.o.setOnClickListener(this);
    this.p.setOnClickListener(this);
    this.q.setOnClickListener(this);
    this.s.setOnClickListener(this);
    this.w = paramView.findViewById(2131165313);
    this.x = ((CallCard)paramView.findViewById(2131165314));
  }
  
  private void c()
  {
    if (PhoneActivity.g())
    {
      PhoneActivity.c(false);
      localIntent2 = new Intent("com.viber.voip.action.RATE_POPUP");
      localIntent2.setFlags(268435456);
      this.b.startActivity(localIntent2);
    }
    while (!PhoneActivity.h())
    {
      Intent localIntent2;
      return;
    }
    PhoneActivity.d(false);
    Intent localIntent1 = new Intent("com.viber.voip.action.FACEBOOK_LIKE_DIALOG");
    localIntent1.setFlags(268435456);
    this.b.startActivity(localIntent1);
  }
  
  public void a(PhoneControllerWrapper paramPhoneControllerWrapper)
  {
    super.a(paramPhoneControllerWrapper);
    a(paramPhoneControllerWrapper.getCallHandler().b());
    this.z = this.w.getBackground();
    gl.a(this.w, new ColorDrawable(this.b.getResources().getColor(2131296375)));
  }
  
  public void a(k paramk)
  {
    super.a(paramk);
    this.y = paramk;
    ((int[][])null);
    ViberApplication.log("updateState, callInfo: " + paramk + ", disconnectedState: " + paramk.d().p());
    int[][] arrayOfInt2;
    int[][] arrayOfInt1;
    if ((paramk != null) && (paramk.f()))
    {
      arrayOfInt2 = l;
      if (this.x != null) {
        this.x.a(true);
      }
      if (paramk.d().o() == 12)
      {
        this.x.getUpperTitle().setText(2131493719);
        arrayOfInt1 = m;
      }
    }
    for (;;)
    {
      int i1 = 0;
      for (;;)
      {
        if (i1 < arrayOfInt1.length)
        {
          this.a.findViewById(arrayOfInt1[i1][0]).setVisibility(arrayOfInt1[i1][1]);
          i1++;
          continue;
          if (Arrays.binarySearch(this.n, paramk.d().p()) >= 0) {}
          for (int i2 = 1;; i2 = 0)
          {
            if (paramk.d().p() != 3) {
              break label206;
            }
            this.x.getUpperTitle().setText(2131493719);
            arrayOfInt1 = arrayOfInt2;
            break;
          }
          label206:
          if ((i2 != 0) && (paramk.d().o() != 11) && (paramk.d().o() != 3)) {
            break label539;
          }
          arrayOfInt1 = m;
          break;
          if ((paramk != null) && (paramk.d().p() == 3))
          {
            arrayOfInt1 = this.j;
            ViberApplication.log("Failed DISCONNECTED");
            this.x.getUpperTitle().setText(2131493719);
            break;
          }
          if ((paramk != null) && (paramk.d().c() == 10) && ((paramk.d().o() == 6) || (paramk.d().p() == 8) || (paramk.d().p() == 7) || (paramk.d().o() == 2)))
          {
            arrayOfInt1 = this.g;
            ViberApplication.log("Failed TIMEOUT");
            break;
          }
          if ((paramk != null) && (paramk.d().c() == 10) && (paramk.d().o() == 1))
          {
            arrayOfInt1 = this.h;
            ViberApplication.log("Failed BUSY");
            break;
          }
          if ((paramk != null) && (paramk.d().c() == 10))
          {
            arrayOfInt1 = this.f;
            ViberApplication.log("Failed FAILED");
            break;
          }
          if ((paramk == null) || (paramk.d().o() == 11) || (paramk.d().o() == 3))
          {
            arrayOfInt1 = this.i;
            ViberApplication.log("Failed ENDED");
            break;
          }
          if ((paramk != null) && (paramk.d().o() == 9))
          {
            ViberApplication.log("Failed TRANSFERED");
            arrayOfInt1 = this.k;
            break;
          }
          arrayOfInt1 = this.c;
          ViberApplication.log("Failed DEFAULT");
          break;
        }
      }
      if (!e.c().b()) {
        this.s.setVisibility(8);
      }
      c();
      return;
      label539:
      arrayOfInt1 = arrayOfInt2;
    }
  }
  
  public void a(boolean paramBoolean) {}
  
  public void b()
  {
    super.b();
    this.p.setVisibility(8);
    this.o.setVisibility(8);
    this.q.setVisibility(8);
    this.s.setVisibility(8);
    this.r.setVisibility(8);
    gl.a(this.w, this.z);
    if ((this.y != null) && (this.y.d().o() == 1))
    {
      this.v.stopTone();
      this.u.handleClose();
    }
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    }
    do
    {
      do
      {
        return;
        this.b.a(this.y, null);
        return;
        this.t.a();
        this.u.handleHangup();
        return;
      } while (this.y.c().b() == null);
      if ((this.y.b() == l.a) || (this.y.d().c() != 10))
      {
        this.b.a(this.y);
        return;
      }
      this.b.d();
      return;
    } while (this.y.c().b() == null);
    Intent localIntent = new Intent("com.viber.voip.action.CALL", Uri.fromParts("tel", this.y.c().b(), null));
    localIntent.putExtra("viber_out", true);
    b.a(this.b, localIntent);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.b.j
 * JD-Core Version:    0.7.0.1
 */
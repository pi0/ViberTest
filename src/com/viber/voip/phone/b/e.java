package com.viber.voip.phone.b;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.TextView;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.b.b;
import com.viber.voip.phone.PhoneActivity;
import com.viber.voip.phone.call.CallerInfo;
import com.viber.voip.phone.call.a;
import com.viber.voip.phone.call.k;
import com.viber.voip.phone.call.n;
import java.lang.reflect.Field;
import java.util.Arrays;

public class e
  extends c
{
  private static int[][] p = { { 2131166029, 8 }, { 2131166030, 8 }, { 2131166031, 0 }, { 2131166028, 8 }, { 2131166027, 8 } };
  private View a;
  private TextView b;
  private View c;
  private TextView d;
  private TextView e;
  private ImageButton f;
  private TextView g;
  private Button h;
  private Button i;
  private Button j;
  private com.viber.voip.phone.b.a.c k;
  private k l;
  private int[][] m = { { 2131166029, 8 }, { 2131166030, 8 }, { 2131166031, 8 }, { 2131166028, 8 }, { 2131166027, 8 } };
  private int[][] n = { { 2131166029, 0 }, { 2131166030, 0 }, { 2131166031, 0 }, { 2131166028, 8 }, { 2131166027, 8 } };
  private int[][] o = { { 2131166029, 0 }, { 2131166030, 0 }, { 2131166031, 0 }, { 2131166028, 0 }, { 2131166027, 0 } };
  private int[] q = { 0, 1, 2, 3, 7 };
  
  private void a()
  {
    k localk = this.l;
    ((int[][])null);
    int[][] arrayOfInt;
    if (localk != null) {
      if (localk.f())
      {
        arrayOfInt = p;
        if ((localk.d().o() == 12) || (localk.d().o() == 15)) {
          arrayOfInt = this.m;
        }
      }
    }
    for (;;)
    {
      for (int i1 = 0; i1 < arrayOfInt.length; i1++) {
        this.a.findViewById(arrayOfInt[i1][0]).setVisibility(arrayOfInt[i1][1]);
      }
      if (Arrays.binarySearch(this.q, localk.d().p()) >= 0) {}
      for (int i2 = 1;; i2 = 0)
      {
        if ((i2 != 0) && (localk.d().o() != 11) && (localk.d().o() != 3)) {
          break label152;
        }
        arrayOfInt = this.m;
        break;
      }
      label152:
      continue;
      if ((localk.d().f()) && ((localk.d().o() == 6) || (localk.d().o() == 4) || (localk.d().p() == 8) || (localk.d().p() == 7) || (localk.d().o() == 2)))
      {
        arrayOfInt = this.o;
        ViberApplication.log("Failed TIMEOUT");
      }
      else if (localk.d().f())
      {
        arrayOfInt = this.n;
        ViberApplication.log("Failed FAILED or BUSY");
      }
      else
      {
        arrayOfInt = this.m;
        ViberApplication.log("Call ended NORMAL");
        continue;
        arrayOfInt = this.m;
        ViberApplication.log("Call ended NORMAL");
      }
    }
    b();
  }
  
  private void b()
  {
    if (PhoneActivity.g())
    {
      PhoneActivity.c(false);
      localIntent2 = new Intent("com.viber.voip.action.RATE_POPUP");
      localIntent2.setFlags(268435456);
      getActivity().startActivity(localIntent2);
    }
    while (!PhoneActivity.h())
    {
      Intent localIntent2;
      return;
    }
    PhoneActivity.d(false);
    Intent localIntent1 = new Intent("com.viber.voip.action.FACEBOOK_LIKE_DIALOG");
    localIntent1.setFlags(268435456);
    getActivity().startActivity(localIntent1);
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    try
    {
      Field localField = Fragment.class.getDeclaredField("mChildFragmentManager");
      localField.setAccessible(true);
      localField.set(this, null);
      return;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      localNoSuchFieldException.printStackTrace();
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      localIllegalAccessException.printStackTrace();
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.l = c().c();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.a = paramLayoutInflater.inflate(2130903286, paramViewGroup, false);
    this.c = paramViewGroup;
    this.b = ((TextView)this.a.findViewById(2131166023));
    this.d = ((TextView)this.a.findViewById(2131166024));
    this.g = ((TextView)this.a.findViewById(2131166025));
    this.f = ((ImageButton)this.a.findViewById(2131166026));
    this.e = ((TextView)this.a.findViewById(2131166027));
    this.h = ((Button)this.a.findViewById(2131166028));
    this.i = ((Button)this.a.findViewById(2131166029));
    this.j = ((Button)this.a.findViewById(2131166031));
    this.k = new com.viber.voip.phone.b.a.c(this.d, this.l);
    if (!com.viber.voip.viberout.e.c().b()) {
      this.h.setVisibility(8);
    }
    for (;;)
    {
      this.i.setOnClickListener(new g(this, null));
      this.j.setOnClickListener(new h(this, null));
      a();
      return this.a;
      this.h.setOnClickListener(new i(this, null));
    }
  }
  
  public void onResume()
  {
    super.onResume();
    if (this.l.f()) {
      this.g.setVisibility(0);
    }
    a();
  }
  
  public void onStart()
  {
    super.onStart();
    k localk = c().c();
    if ((this.l == null) || (this.l != localk)) {
      this.l = localk;
    }
    this.k.a(this.l);
    this.k.update(this.l.d(), this.l.d().clone());
    this.l.d().addObserver(this.k);
    b localb = this.l.c().c();
    if (localb != null)
    {
      this.b.setText(localb.a());
      a(this.c, localb.b(), 2130838099);
      return;
    }
    this.b.setText(this.l.c().b());
  }
  
  public void onStop()
  {
    super.onStop();
    this.l.d().deleteObserver(this.k);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.b.e
 * JD-Core Version:    0.7.0.1
 */
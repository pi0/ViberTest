package com.viber.voip.phone.a;

import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.database.Cursor;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.net.Uri.Builder;
import android.provider.ContactsContract.Contacts;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.phone.PhoneActivity;
import com.viber.voip.phone.ab;
import com.viber.voip.phone.call.CallerInfo;
import com.viber.voip.phone.call.k;
import com.viber.voip.sound.ISoundService;
import com.viber.voip.ui.call.sgs3.SGSIncomingView;
import com.viber.voip.ui.call.sgs3.c;

@SuppressLint({"InlinedApi"})
public class a
  extends ab
  implements c
{
  private final String c = "IncomingStateWrapper";
  private TextView d;
  private TextView e;
  private ImageView f;
  private SGSIncomingView g;
  private b h;
  private boolean i = false;
  private AnimationDrawable j;
  
  public a(View paramView, PhoneActivity paramPhoneActivity)
  {
    super(paramView, paramPhoneActivity);
    this.d = ((TextView)paramView.findViewById(2131165488));
    this.e = ((TextView)paramView.findViewById(2131165489));
    this.f = ((ImageView)paramView.findViewById(2131165458));
    Drawable localDrawable = this.f.getDrawable();
    if ((localDrawable instanceof AnimationDrawable)) {
      this.j = ((AnimationDrawable)localDrawable);
    }
    this.g = ((SGSIncomingView)paramView.findViewById(2131165321));
    if (this.g != null) {
      this.g.setTargetListener(this);
    }
  }
  
  public void a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      this.b.e();
      return;
    }
    this.b.f();
  }
  
  public void a(PhoneControllerWrapper paramPhoneControllerWrapper)
  {
    this.i = true;
    this.g.setVisibility(0);
    this.b.setVolumeControlStream(ViberApplication.getInstance().getSoundService().stream_Ring());
    if (this.j != null) {
      this.j.start();
    }
  }
  
  public void a(k paramk)
  {
    if (paramk != null)
    {
      if (this.h == null)
      {
        if (paramk.c().c() != null)
        {
          Uri localUri2 = ContactsContract.Contacts.CONTENT_LOOKUP_URI.buildUpon().appendEncodedPath(paramk.c().c().g()).build();
          Cursor localCursor = this.b.getContentResolver().query(localUri2, null, null, null, null);
          if (localCursor.moveToFirst())
          {
            int k = localCursor.getColumnIndex("display_name");
            int m = localCursor.getColumnIndex("photo_uri");
            this.h = new b(this, localCursor.getString(k), paramk.c().b(), localCursor.getString(m));
          }
        }
        if (this.h == null) {
          this.h = new b(this, null, paramk.c().b(), null);
        }
      }
      if (b.a(this.h) == null) {
        break label298;
      }
      this.d.setText(b.a(this.h));
      this.e.setText(b.b(this.h));
      this.e.setVisibility(0);
    }
    for (;;)
    {
      if ((paramk.c().c() != null) && (b.c(this.h) != null))
      {
        Uri localUri1 = Uri.parse(b.c(this.h));
        if (this.j != null)
        {
          this.j.stop();
          this.j = null;
        }
        this.f.setPadding(0, 0, 0, 0);
        this.f.getLayoutParams().height = -1;
        this.f.getLayoutParams().width = -1;
        this.f.setImageURI(localUri1);
      }
      return;
      label298:
      this.d.setText(paramk.c().b());
      this.e.setVisibility(8);
    }
  }
  
  public void a(boolean paramBoolean) {}
  
  public boolean a()
  {
    return this.i;
  }
  
  public void b()
  {
    this.i = false;
    if (this.j != null) {
      this.j.stop();
    }
    this.g.setVisibility(8);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.a.a
 * JD-Core Version:    0.7.0.1
 */
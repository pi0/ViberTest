package com.viber.voip.messages.conversation.publicgroup;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import com.viber.jni.LocationInfo;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.provider.b;
import com.viber.provider.e;
import com.viber.voip.ViberApplication;
import com.viber.voip.util.at;
import com.viber.voip.util.b.w;
import com.viber.voip.util.gl;
import com.viber.voip.util.hv;
import com.viber.voip.util.upload.ac;
import com.viber.voip.util.upload.p;
import com.viber.voip.widget.TextViewWithDescription;

public class EditPublicGroupActivity
  extends CreatePublicGroupActivity
  implements e, p
{
  public static final String y = EditPublicGroupActivity.class.getSimpleName();
  private be A;
  private Handler B = new Handler();
  private long C;
  private int D;
  private boolean E;
  private as z;
  
  private void a(Bundle paramBundle)
  {
    if (paramBundle == null) {
      finish();
    }
    do
    {
      return;
      this.C = paramBundle.getLong("public_group_id_extra", -1L);
    } while (this.C != -1L);
    finish();
  }
  
  private void a(String paramString)
  {
    ViberApplication.log(3, y, paramString);
  }
  
  private void f()
  {
    ab localab = new ab(this);
    this.b.a(localab);
    this.f.a(localab);
    this.d.a(localab);
  }
  
  @SuppressLint({"NewApi"})
  private void g()
  {
    if (!this.E)
    {
      this.E = true;
      supportInvalidateOptionsMenu();
    }
  }
  
  private boolean h()
  {
    if (i())
    {
      this.D = ViberApplication.getInstance().getPhoneController(true).generateSequence();
      this.A.a(this.D);
      return true;
    }
    at.a(this, 2131494553, 2131494554, null);
    return false;
  }
  
  private boolean i()
  {
    if (TextUtils.isEmpty(this.b.getText().toString().trim()))
    {
      a("group name can't be empty");
      return false;
    }
    return true;
  }
  
  protected void a() {}
  
  public void a(int paramInt1, long paramLong, int paramInt2)
  {
    if (this.D != paramInt1) {
      return;
    }
    if (paramInt2 == 1)
    {
      finish();
      return;
    }
    d();
    ViberApplication.getInstance().showToast("Update error, status :  " + paramInt2);
  }
  
  public void a(Uri paramUri)
  {
    a("onUploadTimeout");
  }
  
  public void a(Uri paramUri, int paramInt)
  {
    a("onFail: errorCode=" + paramInt);
  }
  
  public void a(Uri paramUri, String paramString)
  {
    a("onUploadComplete: id=" + paramString);
    long l = Long.parseLong(paramString, 16);
    if (paramUri == this.n)
    {
      a(paramUri, hv.b(l + ""));
      this.A.a(l);
      if ((this.o != null) && (!this.A.b())) {}
    }
    do
    {
      h();
      do
      {
        return;
      } while (paramUri != this.o);
      a(paramUri, hv.c(l + ""));
      this.A.b(l);
    } while ((this.n != null) && (!this.A.a()));
    h();
  }
  
  public void a(b paramb) {}
  
  public void a(b paramb, boolean paramBoolean)
  {
    PublicGroupDataLoaderEntity localPublicGroupDataLoaderEntity;
    if (paramb.getCount() != 0)
    {
      localPublicGroupDataLoaderEntity = (PublicGroupDataLoaderEntity)this.z.e(0);
      getSupportActionBar().setTitle(localPublicGroupDataLoaderEntity.d());
      this.A = new be(localPublicGroupDataLoaderEntity);
      this.r.a(hv.b(localPublicGroupDataLoaderEntity.C()), this.h, this.t, new z(this));
      this.b.setText(localPublicGroupDataLoaderEntity.d());
      this.b.getEditText().setSelection(this.b.getText().length());
      this.a.setText(localPublicGroupDataLoaderEntity.K());
      this.f.setText(localPublicGroupDataLoaderEntity.L());
      this.B.post(new aa(this, localPublicGroupDataLoaderEntity));
      if (!TextUtils.isEmpty(localPublicGroupDataLoaderEntity.S())) {
        this.r.a(Uri.parse(localPublicGroupDataLoaderEntity.S()), this.s, this.v);
      }
      if (TextUtils.isEmpty(localPublicGroupDataLoaderEntity.R())) {
        a(localPublicGroupDataLoaderEntity.N() / 10000000.0D, localPublicGroupDataLoaderEntity.O() / 10000000.0D);
      }
    }
    else
    {
      return;
    }
    this.c.setText(localPublicGroupDataLoaderEntity.R());
    this.q = new LocationInfo(localPublicGroupDataLoaderEntity.N(), localPublicGroupDataLoaderEntity.O());
  }
  
  protected void a(String paramString, boolean paramBoolean) {}
  
  protected void b() {}
  
  public void onClick(View paramView)
  {
    super.onClick(paramView);
    g();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.b.setDescription(getString(2131494520));
    this.a.setDescription(getString(2131494524));
    this.c.setDescription(getString(2131494523));
    findViewById(2131165720).setVisibility(8);
    if (paramBundle != null) {}
    for (;;)
    {
      a(paramBundle);
      if (this.C != -1L)
      {
        this.z = new as(this, getSupportLoaderManager(), ViberApplication.getInstance().getMessagesManager(), this, this.C);
        this.z.e();
        this.i.setVisibility(8);
        this.l.setVisibility(8);
        this.a.setVisibility(8);
      }
      return;
      paramBundle = getIntent().getExtras();
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getSupportMenuInflater().inflate(2131755031, paramMenu);
    MenuItem localMenuItem = paramMenu.findItem(2131166288);
    localMenuItem.setVisible(this.E);
    gl.a(localMenuItem, 2130837612, 2131494199, new y(this));
    return true;
  }
  
  public void onDestroy()
  {
    ac.a(this.n, this);
    ac.a(this.o, this);
    super.onDestroy();
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putLong("public_group_id_extra", this.C);
    super.onSaveInstanceState(paramBundle);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.EditPublicGroupActivity
 * JD-Core Version:    0.7.0.1
 */
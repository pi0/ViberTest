package com.viber.voip.messages.ui;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import android.widget.TextView;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.view.MenuItem;
import com.viber.provider.b;
import com.viber.provider.e;
import com.viber.voip.ViberApplication;
import com.viber.voip.app.ViberFragmentActivity;
import com.viber.voip.messages.adapters.l;
import com.viber.voip.messages.conversation.ap;
import com.viber.voip.messages.conversation.ar;
import com.viber.voip.util.gk;

public class ParticipantsCallChooser
  extends ViberFragmentActivity
  implements AdapterView.OnItemClickListener, e
{
  private static final String a = ParticipantsCallChooser.class.getSimpleName();
  private l b;
  private com.viber.voip.messages.i c;
  private ap d;
  private ListView e;
  private TextView f;
  
  private void a()
  {
    getSupportActionBar().setTitle(2131494059);
    getSupportActionBar().setHomeButtonEnabled(true);
    getSupportActionBar().setDisplayShowHomeEnabled(false);
    getSupportActionBar().setDisplayHomeAsUpEnabled(true);
  }
  
  private void a(Intent paramIntent)
  {
    long l = paramIntent.getExtras().getLong("thread_id", -1L);
    if (l == -1L)
    {
      a("handleIntent ERROR Thread id not found in incoming intent!");
      finish();
    }
    this.d = new ap(this, false, true, getSupportLoaderManager(), this.c, this);
    this.d.n();
    this.d.b(l);
    this.d.e();
  }
  
  private void a(String paramString)
  {
    ViberApplication.log(3, a, paramString);
  }
  
  private void a(String paramString1, String paramString2, Runnable paramRunnable)
  {
    com.viber.voip.block.i.a(this, paramString1, paramString2, false, paramRunnable);
  }
  
  private void b()
  {
    TextView localTextView = this.f;
    if (this.d.getCount() != 0) {}
    for (int i = 8;; i = 0)
    {
      localTextView.setVisibility(i);
      if (this.b != null) {
        break;
      }
      this.b = new l(this, this.d, false);
      this.e.setAdapter(this.b);
      return;
    }
    this.b.notifyDataSetChanged();
  }
  
  public void a(b paramb) {}
  
  public void a(b paramb, boolean paramBoolean)
  {
    b();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.c = ViberApplication.getInstance().getMessagesManager();
    setContentView(2130903279);
    a();
    this.e = ((ListView)findViewById(2131166010));
    this.e.setOnItemClickListener(this);
    this.f = ((TextView)findViewById(16908292));
    a(getIntent());
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    this.d.m();
    this.b = null;
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ar localar = (ar)paramAdapterView.getItemAtPosition(paramInt);
    String str = localar.h();
    a(gk.a(localar), str, new ds(this, str));
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return false;
    }
    finish();
    return true;
  }
  
  protected void onResume()
  {
    super.onResume();
    b();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.ParticipantsCallChooser
 * JD-Core Version:    0.7.0.1
 */
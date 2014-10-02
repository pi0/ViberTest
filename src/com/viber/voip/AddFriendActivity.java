package com.viber.voip;

import android.content.Intent;
import android.hardware.Camera;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.view.MenuItem;
import com.viber.voip.util.at;
import com.viber.voip.util.gn;
import com.viber.voip.util.gv;
import com.viber.voip.util.gz;

public class AddFriendActivity
  extends BaseAddFriendActivity
  implements View.OnClickListener, v
{
  private EditText a;
  private Button b;
  private Button c;
  
  private void b()
  {
    e();
    a(d(), true, this);
  }
  
  private void c()
  {
    e();
    gz.a(this);
    finish();
  }
  
  private String d()
  {
    return this.a.getText().toString().trim();
  }
  
  private void e()
  {
    ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(this.a.getWindowToken(), 0);
  }
  
  public void a() {}
  
  public void a(int paramInt, String paramString)
  {
    switch (paramInt)
    {
    default: 
      at.a(this, 2131493775, 2131494137, null);
      return;
    case 1: 
      gv.a(this, paramString);
      finish();
      return;
    case 3: 
    case 4: 
      at.a(this, 2131493794, 2131493758, null);
      return;
    }
    at.a(this, 2131494231, 2131494232, null);
  }
  
  public void a(String paramString, BaseAddFriendActivity.ContactDetails paramContactDetails)
  {
    if (paramContactDetails.a()) {
      gn.a(this, ViberApplication.isTablet(), paramContactDetails.c(), paramContactDetails.b(), paramContactDetails.d(), paramContactDetails.e(), paramContactDetails.f(), null);
    }
    for (;;)
    {
      finish();
      return;
      gv.a(this, paramString, paramContactDetails);
    }
  }
  
  public void finish()
  {
    e();
    super.finish();
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131165548: 
      b();
      return;
    }
    c();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    boolean bool = true;
    super.onCreate(paramBundle);
    setContentView(2130903139);
    getSupportActionBar().setDisplayHomeAsUpEnabled(bool);
    Intent localIntent = getIntent();
    this.a = ((EditText)findViewById(2131165581));
    this.b = ((Button)findViewById(2131165548));
    this.c = ((Button)findViewById(2131165583));
    TextView localTextView1 = (TextView)findViewById(2131165582);
    TextView localTextView2 = (TextView)findViewById(2131165584);
    if (paramBundle == null)
    {
      this.a.setText(localIntent.getStringExtra("phone_number"));
      Editable localEditable = this.a.getText();
      if (!TextUtils.isEmpty(localEditable)) {
        this.a.setSelection(localEditable.length());
      }
    }
    Button localButton = this.b;
    if (d().length() > 0) {}
    for (;;)
    {
      localButton.setEnabled(bool);
      this.a.addTextChangedListener(new e(this));
      this.a.setOnEditorActionListener(new f(this));
      this.b.setOnClickListener(this);
      this.c.setOnClickListener(this);
      if (Camera.getNumberOfCameras() <= 0) {
        break;
      }
      this.c.setVisibility(0);
      localTextView1.setVisibility(0);
      localTextView2.setVisibility(0);
      return;
      bool = false;
    }
    this.c.setVisibility(8);
    localTextView1.setVisibility(8);
    localTextView2.setVisibility(8);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    onBackPressed();
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.AddFriendActivity
 * JD-Core Version:    0.7.0.1
 */
package com.viber.voip.messages.ui.view;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.viber.voip.util.gj;

public class a
  extends FrameLayout
{
  private Context a;
  private View b;
  private Button c;
  private TextView d;
  private String e;
  private String f;
  private int g;
  
  public a(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }
  
  private void a(Context paramContext)
  {
    this.a = paramContext;
    this.e = this.a.getString(2131494532);
    this.g = this.a.getResources().getDimensionPixelSize(2131362322);
    LayoutInflater.from(this.a).inflate(2130903142, this);
    this.b = findViewById(2131165313);
    this.d = ((TextView)findViewById(2131165356));
    this.c = ((Button)findViewById(2131165596));
    this.c.setOnClickListener(new b(this));
  }
  
  public void setContentTopPadding(boolean paramBoolean)
  {
    View localView = this.b;
    if (paramBoolean) {}
    for (int i = this.g;; i = 0)
    {
      localView.setPadding(0, i, 0, 0);
      return;
    }
  }
  
  public void setSearchText(String paramString)
  {
    this.f = paramString;
    if (gj.c(this.f))
    {
      this.b.setVisibility(8);
      return;
    }
    this.b.setVisibility(0);
    TextView localTextView = this.d;
    String str = this.e;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.f;
    localTextView.setText(String.format(str, arrayOfObject));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.view.a
 * JD-Core Version:    0.7.0.1
 */
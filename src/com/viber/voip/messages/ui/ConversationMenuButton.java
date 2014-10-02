package com.viber.voip.messages.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.viber.voip.bb;

public class ConversationMenuButton
  extends RelativeLayout
{
  private int a;
  private String b;
  private ImageView c;
  private TextView d;
  
  public ConversationMenuButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, bb.ConversationMenuButton);
    this.a = localTypedArray.getResourceId(0, 0);
    this.b = localTypedArray.getString(1);
    localTypedArray.recycle();
    a();
  }
  
  private void a()
  {
    LayoutInflater.from(getContext()).inflate(2130903056, this, true);
    this.c = ((ImageView)findViewById(2131165296));
    this.c.setImageResource(this.a);
    this.d = ((TextView)findViewById(2131165356));
    this.d.setText(this.b);
    ((RelativeLayout.LayoutParams)this.d.getLayoutParams()).addRule(3, 2131165296);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.ConversationMenuButton
 * JD-Core Version:    0.7.0.1
 */
package com.viber.voip.messages.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.viber.voip.ui.ac;
import com.viber.voip.ui.ai;
import com.viber.voip.ui.ak;
import com.viber.voip.util.gj;

public class ConversationGalleryListView
  extends ac
{
  private TextView a;
  
  public ConversationGalleryListView(Context paramContext)
  {
    super(paramContext);
  }
  
  public ConversationGalleryListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public ConversationGalleryListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected float a(int paramInt, float paramFloat)
  {
    return 0.0F;
  }
  
  protected void a(int paramInt, View paramView) {}
  
  public void a(ak paramak)
  {
    if ((!gj.c(paramak.b())) && (!this.a.getText().equals(paramak.b()))) {
      this.a.setText(paramak.b());
    }
  }
  
  protected void b(int paramInt) {}
  
  protected ai c()
  {
    ai localai = new ai();
    localai.e = inflate(getContext(), 2130903170, null);
    this.a = ((TextView)localai.e.findViewById(2131165705));
    return localai;
  }
  
  protected int getHeaderTag()
  {
    return 2131165340;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.ConversationGalleryListView
 * JD-Core Version:    0.7.0.1
 */
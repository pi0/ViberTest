package com.viber.voip.ui;

import android.content.Context;
import android.graphics.Typeface;
import android.text.Editable;
import android.util.AttributeSet;
import android.widget.EditText;
import android.widget.TextView.BufferType;
import com.viber.voip.util.gj;

public class ViberEditText
  extends EditText
{
  public ViberEditText(Context paramContext)
  {
    super(paramContext);
    gj.a(this, null);
  }
  
  public ViberEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    gj.a(this, paramAttributeSet);
  }
  
  public ViberEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    gj.a(this, paramAttributeSet);
  }
  
  public Editable getText()
  {
    try
    {
      Editable localEditable = super.getText();
      return localEditable;
    }
    catch (ClassCastException localClassCastException)
    {
      setText("", TextView.BufferType.EDITABLE);
    }
    return super.getText();
  }
  
  public void setInputType(int paramInt)
  {
    Typeface localTypeface = getTypeface();
    super.setInputType(paramInt);
    if (localTypeface != null) {
      setTypeface(localTypeface);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.ui.ViberEditText
 * JD-Core Version:    0.7.0.1
 */
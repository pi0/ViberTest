package com.viber.voip.phone.b.a;

import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.widget.EditText;
import com.viber.voip.sound.ISoundService;
import com.viber.voip.ui.ViberEditText;

public class e
  implements TextWatcher, View.OnTouchListener
{
  private ISoundService a;
  private ViberEditText b;
  private View c;
  private View.OnClickListener d;
  private Drawable[] e;
  private boolean f = true;
  
  public e(View paramView, ISoundService paramISoundService)
  {
    this(paramISoundService);
    if (paramView == null) {
      a(paramView);
    }
  }
  
  public e(ISoundService paramISoundService)
  {
    this.a = paramISoundService;
  }
  
  private void a(CharSequence paramCharSequence)
  {
    if ((paramCharSequence.length() > 0) && (!this.f))
    {
      this.b.setCompoundDrawablesWithIntrinsicBounds(this.e[0], this.e[1], this.e[2], this.e[3]);
      this.f = true;
    }
    while ((paramCharSequence.length() != 0) || (!this.f)) {
      return;
    }
    this.b.setCompoundDrawablesWithIntrinsicBounds(null, null, null, null);
    this.f = false;
  }
  
  public void a(View.OnClickListener paramOnClickListener)
  {
    this.d = paramOnClickListener;
    if (this.c != null) {
      this.c.setOnClickListener(paramOnClickListener);
    }
  }
  
  public void a(View paramView)
  {
    this.b = ((ViberEditText)paramView.findViewById(2131166020));
    this.b.requestFocus();
    this.b.setInputType(0);
    this.b.setOnTouchListener(this);
    this.b.addTextChangedListener(this);
    this.e = this.b.getCompoundDrawables();
    a(this.b.getText().toString());
    this.c = paramView.findViewById(2131166019);
    if (this.d != null) {
      this.c.setOnClickListener(this.d);
    }
    paramView.findViewById(2131165732).setOnClickListener(new g(this, "1", 1));
    paramView.findViewById(2131165733).setOnClickListener(new g(this, "2", 2));
    paramView.findViewById(2131165734).setOnClickListener(new g(this, "3", 3));
    paramView.findViewById(2131165735).setOnClickListener(new g(this, "4", 4));
    paramView.findViewById(2131165736).setOnClickListener(new g(this, "5", 5));
    paramView.findViewById(2131165737).setOnClickListener(new g(this, "6", 6));
    paramView.findViewById(2131165738).setOnClickListener(new g(this, "7", 7));
    paramView.findViewById(2131165739).setOnClickListener(new g(this, "8", 8));
    paramView.findViewById(2131165740).setOnClickListener(new g(this, "9", 9));
    paramView.findViewById(2131165741).setOnClickListener(new g(this, "0", 0));
    paramView.findViewById(2131165368).setOnClickListener(new g(this, "*", 10));
    paramView.findViewById(2131165742).setOnClickListener(new g(this, "#", 11));
    paramView.findViewById(2131165741).setOnLongClickListener(new h(this, null));
  }
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    a(paramCharSequence);
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0)
    {
      EditText localEditText = (EditText)paramView;
      Drawable localDrawable = localEditText.getCompoundDrawables()[2];
      int i = (int)paramMotionEvent.getX();
      ((int)paramMotionEvent.getY());
      if ((localDrawable != null) && (i >= paramView.getWidth() - localDrawable.getBounds().width())) {
        localEditText.getText().clear();
      }
    }
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.phone.b.a.e
 * JD-Core Version:    0.7.0.1
 */
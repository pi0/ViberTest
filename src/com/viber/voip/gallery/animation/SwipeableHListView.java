package com.viber.voip.gallery.animation;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import com.viber.voip.ViberApplication;
import com.viber.voip.util.gl;
import it.sephiroth.android.library.widget.HListView;

@SuppressLint({"InlinedApi"})
public class SwipeableHListView
  extends HListView
  implements y
{
  public static final String a = SwipeableHListView.class.getSimpleName();
  private b aA;
  private View.OnClickListener aB;
  private s az;
  
  public SwipeableHListView(Context paramContext)
  {
    super(paramContext);
    z();
  }
  
  public SwipeableHListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    z();
  }
  
  public SwipeableHListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void a(String paramString)
  {
    ViberApplication.log(3, a, paramString);
  }
  
  private void z()
  {
    this.az = new s(getContext(), this, w.a, 50);
    this.az.a(true);
  }
  
  protected View a(int paramInt, boolean[] paramArrayOfBoolean)
  {
    View localView = super.a(paramInt, paramArrayOfBoolean);
    if (localView != null)
    {
      if (gl.b()) {
        localView.setLayerType(2, null);
      }
      if ((localView.getTag(2131165299) != null) && (((Boolean)localView.getTag(2131165299)).booleanValue())) {
        break label57;
      }
      localView.setOnTouchListener(this.az);
    }
    label57:
    do
    {
      return localView;
      localView.setOnTouchListener(null);
    } while (this.aB == null);
    localView.setOnClickListener(this.aB);
    return localView;
  }
  
  public void a(View paramView) {}
  
  public void a(View paramView, boolean paramBoolean, x paramx)
  {
    a("onSwipeEnded remove=" + paramBoolean);
    if ((paramBoolean) && (paramView != null))
    {
      Integer localInteger = (Integer)paramView.getTag();
      if (localInteger == null) {
        return;
      }
      paramView.setVisibility(0);
      if (this.aA != null) {
        this.aA.a(paramView, null, localInteger.intValue());
      }
      paramx.a();
      return;
    }
    paramx.a();
  }
  
  public void b(View paramView) {}
  
  public void c(View paramView)
  {
    a("onViewClicked");
    if (this.aB != null) {
      this.aB.onClick(paramView);
    }
  }
  
  public void d(View paramView) {}
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    if ((!isInEditMode()) && (gl.b())) {
      setClipToPadding(false);
    }
  }
  
  public void setViewClickListener(View.OnClickListener paramOnClickListener)
  {
    this.aB = paramOnClickListener;
  }
  
  public void setViewRemoveListener(b paramb)
  {
    a("setViewRemoveListener");
    this.aA = paramb;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.gallery.animation.SwipeableHListView
 * JD-Core Version:    0.7.0.1
 */
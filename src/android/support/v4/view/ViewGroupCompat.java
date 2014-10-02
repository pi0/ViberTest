package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

public class ViewGroupCompat
{
  static final ViewGroupCompat.ViewGroupCompatImpl IMPL = new ViewGroupCompat.ViewGroupCompatStubImpl();
  public static final int LAYOUT_MODE_CLIP_BOUNDS = 0;
  public static final int LAYOUT_MODE_OPTICAL_BOUNDS = 1;
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 18)
    {
      IMPL = new ViewGroupCompat.ViewGroupCompatJellybeanMR2Impl();
      return;
    }
    if (i >= 14)
    {
      IMPL = new ViewGroupCompat.ViewGroupCompatIcsImpl();
      return;
    }
    if (i >= 11)
    {
      IMPL = new ViewGroupCompat.ViewGroupCompatHCImpl();
      return;
    }
  }
  
  public static int getLayoutMode(ViewGroup paramViewGroup)
  {
    return IMPL.getLayoutMode(paramViewGroup);
  }
  
  public static boolean onRequestSendAccessibilityEvent(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    return IMPL.onRequestSendAccessibilityEvent(paramViewGroup, paramView, paramAccessibilityEvent);
  }
  
  public static void setLayoutMode(ViewGroup paramViewGroup, int paramInt)
  {
    IMPL.setLayoutMode(paramViewGroup, paramInt);
  }
  
  public static void setMotionEventSplittingEnabled(ViewGroup paramViewGroup, boolean paramBoolean)
  {
    IMPL.setMotionEventSplittingEnabled(paramViewGroup, paramBoolean);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     android.support.v4.view.ViewGroupCompat
 * JD-Core Version:    0.7.0.1
 */
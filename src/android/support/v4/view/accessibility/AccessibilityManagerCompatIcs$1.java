package android.support.v4.view.accessibility;

import android.view.accessibility.AccessibilityManager.AccessibilityStateChangeListener;

final class AccessibilityManagerCompatIcs$1
  implements AccessibilityManager.AccessibilityStateChangeListener
{
  AccessibilityManagerCompatIcs$1(AccessibilityManagerCompatIcs.AccessibilityStateChangeListenerBridge paramAccessibilityStateChangeListenerBridge) {}
  
  public void onAccessibilityStateChanged(boolean paramBoolean)
  {
    this.val$bridge.onAccessibilityStateChanged(paramBoolean);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     android.support.v4.view.accessibility.AccessibilityManagerCompatIcs.1
 * JD-Core Version:    0.7.0.1
 */
package android.support.v4.app;

import android.view.View;

class Fragment$1
  implements FragmentContainer
{
  Fragment$1(Fragment paramFragment) {}
  
  public View findViewById(int paramInt)
  {
    if (this.this$0.mView == null) {
      throw new IllegalStateException("Fragment does not have a view");
    }
    return this.this$0.mView.findViewById(paramInt);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     android.support.v4.app.Fragment.1
 * JD-Core Version:    0.7.0.1
 */
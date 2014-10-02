package com.actionbarsherlock.internal.widget;

class IcsProgressBar$RefreshProgressRunnable
  implements Runnable
{
  private boolean mFromUser;
  private int mId;
  private int mProgress;
  
  IcsProgressBar$RefreshProgressRunnable(IcsProgressBar paramIcsProgressBar, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    this.mId = paramInt1;
    this.mProgress = paramInt2;
    this.mFromUser = paramBoolean;
  }
  
  public void run()
  {
    IcsProgressBar.access$000(this.this$0, this.mId, this.mProgress, this.mFromUser, true);
    IcsProgressBar.access$102(this.this$0, this);
  }
  
  public void setup(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    this.mId = paramInt1;
    this.mProgress = paramInt2;
    this.mFromUser = paramBoolean;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.actionbarsherlock.internal.widget.IcsProgressBar.RefreshProgressRunnable
 * JD-Core Version:    0.7.0.1
 */
package com.actionbarsherlock.internal.widget;

class IcsAdapterView$SelectionNotifier
  implements Runnable
{
  private IcsAdapterView$SelectionNotifier(IcsAdapterView paramIcsAdapterView) {}
  
  public void run()
  {
    if (this.this$0.mDataChanged)
    {
      if (this.this$0.getAdapter() != null) {
        this.this$0.post(this);
      }
      return;
    }
    IcsAdapterView.access$200(this.this$0);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.actionbarsherlock.internal.widget.IcsAdapterView.SelectionNotifier
 * JD-Core Version:    0.7.0.1
 */
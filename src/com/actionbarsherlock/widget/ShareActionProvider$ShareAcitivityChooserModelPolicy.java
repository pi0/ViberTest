package com.actionbarsherlock.widget;

import android.content.Intent;

class ShareActionProvider$ShareAcitivityChooserModelPolicy
  implements ActivityChooserModel.OnChooseActivityListener
{
  private ShareActionProvider$ShareAcitivityChooserModelPolicy(ShareActionProvider paramShareActionProvider) {}
  
  public boolean onChooseActivity(ActivityChooserModel paramActivityChooserModel, Intent paramIntent)
  {
    if (ShareActionProvider.access$400(this.this$0) != null) {
      return ShareActionProvider.access$400(this.this$0).onShareTargetSelected(this.this$0, paramIntent);
    }
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.actionbarsherlock.widget.ShareActionProvider.ShareAcitivityChooserModelPolicy
 * JD-Core Version:    0.7.0.1
 */
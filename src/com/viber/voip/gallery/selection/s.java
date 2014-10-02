package com.viber.voip.gallery.selection;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;
import java.util.ArrayList;

class s
  implements View.OnClickListener
{
  s(ViberGalleryActivity paramViberGalleryActivity) {}
  
  public void onClick(View paramView)
  {
    if ((!this.a.a()) && (ViberGalleryActivity.a(this.a).isEmpty()))
    {
      Toast.makeText(this.a.getApplicationContext(), 2131494427, 0).show();
      return;
    }
    this.a.a(ViberGalleryActivity.a(this.a));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.gallery.selection.s
 * JD-Core Version:    0.7.0.1
 */
package com.viber.voip.gallery;

import android.os.Bundle;
import android.view.MotionEvent;
import com.viber.voip.app.ViberFragmentActivity;

public class GalleryCoach
  extends ViberFragmentActivity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903218);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 1) {
      finish();
    }
    return super.onTouchEvent(paramMotionEvent);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.gallery.GalleryCoach
 * JD-Core Version:    0.7.0.1
 */
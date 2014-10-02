package com.viber.voip.phone;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.nineoldandroids.view.ViewHelper;
import com.viber.voip.bb;
import com.viber.voip.widget.PausableChronometer;

public class VideoCallTitleChronometer
  extends PausableChronometer
{
  public VideoCallTitleChronometer(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public VideoCallTitleChronometer(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    int i = paramContext.obtainStyledAttributes(paramAttributeSet, bb.VideoCall).getInt(0, 0);
    if (i != 0) {
      ViewHelper.setRotation(this, i);
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.phone.VideoCallTitleChronometer
 * JD-Core Version:    0.7.0.1
 */
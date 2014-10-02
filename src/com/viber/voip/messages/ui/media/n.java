package com.viber.voip.messages.ui.media;

import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.viber.dexshared.GMaps.GoogleMap.InfoWindowAdapter;
import com.viber.dexshared.GMaps.Marker;
import com.viber.voip.util.gl;

class n
  implements GMaps.GoogleMap.InfoWindowAdapter
{
  LayoutInflater a = null;
  
  n(GoogleApiMapPreviewActivityV2 paramGoogleApiMapPreviewActivityV2, LayoutInflater paramLayoutInflater)
  {
    this.a = paramLayoutInflater;
  }
  
  public View getInfoContents(GMaps.Marker paramMarker)
  {
    return null;
  }
  
  public View getInfoWindow(GMaps.Marker paramMarker)
  {
    View localView = this.a.inflate(2130903144, null);
    FrameLayout localFrameLayout = (FrameLayout)localView.findViewById(2131165602);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams.setMargins(0, 0, 0, 0);
    localFrameLayout.setLayoutParams(localLayoutParams);
    gl.a(localFrameLayout, this.b.getResources().getDrawable(2130838363));
    ((ProgressBar)localView.findViewById(2131165605)).setVisibility(8);
    ((TextView)localView.findViewById(2131165603)).setText(paramMarker.getTitle());
    TextView localTextView = (TextView)localView.findViewById(2131165604);
    localTextView.setText(paramMarker.getSnippet());
    localTextView.setVisibility(0);
    return localView;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.n
 * JD-Core Version:    0.7.0.1
 */
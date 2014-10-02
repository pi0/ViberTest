package com.viber.voip.backgrounds.ui;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import com.viber.voip.backgrounds.a.a;
import com.viber.voip.backgrounds.q;
import com.viber.voip.messages.extras.image.h;

public class SelectBackgroundForVibeActivity
  extends BackgroundGalleryActivity
{
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 == -1) {
      switch (paramInt1)
      {
      }
    }
    do
    {
      do
      {
        return;
      } while (paramIntent.getData() == null);
      Uri localUri = paramIntent.getData();
      a("uriFromIntent = " + localUri);
      if (!localUri.equals(this.a)) {
        h.c(this, this.a);
      }
      Bundle localBundle2 = new Bundle();
      localBundle2.putString("backgroundUri", localUri.toString());
      setResult(-1, new Intent().putExtras(localBundle2));
      finish();
      return;
    } while (this.a == null);
    Bundle localBundle1 = new Bundle();
    localBundle1.putString("backgroundUri", this.a.toString());
    setResult(-1, new Intent().putExtras(localBundle1));
    finish();
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramView.setBackgroundResource(2130837506);
    q localq = this.b.a(paramInt);
    Bundle localBundle = new Bundle();
    localBundle.putInt("backgroundId", localq.a);
    setResult(-1, new Intent().putExtras(localBundle));
    finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.backgrounds.ui.SelectBackgroundForVibeActivity
 * JD-Core Version:    0.7.0.1
 */
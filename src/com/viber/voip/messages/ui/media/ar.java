package com.viber.voip.messages.ui.media;

import android.support.v4.view.ViewPager.SimpleOnPageChangeListener;
import android.widget.TextView;
import com.viber.voip.messages.adapters.h;
import com.viber.voip.messages.conversation.an;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class ar
  extends ViewPager.SimpleOnPageChangeListener
{
  private int c;
  
  ar(ViewMediaActivity paramViewMediaActivity, int paramInt) {}
  
  public void onPageScrollStateChanged(int paramInt)
  {
    ViewMediaActivity.a(this.b, "onPageScrollStateChanged state = " + paramInt);
    if (ViewMediaActivity.a(this.b) == null) {}
    label51:
    label105:
    do
    {
      return;
      ba localba;
      if (paramInt != 0)
      {
        ViewMediaActivity.a(this.b).a();
        if (paramInt == 1)
        {
          this.c = ViewMediaActivity.b(this.b);
          if (ViewMediaActivity.c(this.b) != null) {
            ViewMediaActivity.c(this.b).j();
          }
          Iterator localIterator = ViewMediaActivity.d(this.b).entrySet().iterator();
          while (localIterator.hasNext())
          {
            Map.Entry localEntry = (Map.Entry)localIterator.next();
            if (localEntry.getValue() != null)
            {
              localba = (ba)localEntry.getValue();
              if (ViewMediaActivity.e(this.b).getVisibility() != 8) {
                break label194;
              }
            }
          }
        }
      }
      else
      {
        for (boolean bool = true;; bool = false)
        {
          localba.a(bool);
          break label105;
          break;
          ViewMediaActivity.a(this.b).b(ViewMediaActivity.b(this.b));
          break label51;
        }
      }
    } while ((ViewMediaActivity.b(this.b) != this.c) || (paramInt != 0) || (!ViewMediaActivity.a(this.b).a(ViewMediaActivity.b(this.b)).e().equals("video")));
    label194:
    if (ViewMediaActivity.b(this.b, ViewMediaActivity.b(this.b))) {
      ((ba)ViewMediaActivity.d(this.b).get(Integer.valueOf(ViewMediaActivity.b(this.b)))).c();
    }
    ViewMediaActivity.a(this.b, ViewMediaActivity.b(this.b));
  }
  
  public void onPageSelected(int paramInt)
  {
    ViewMediaActivity.a(this.b, "onPageSelected position = " + paramInt);
    ViewMediaActivity.a(this.b, paramInt, this.a);
    ViewMediaActivity.a(this.b, paramInt);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.media.ar
 * JD-Core Version:    0.7.0.1
 */
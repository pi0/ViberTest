package com.viber.voip.messages.conversation.publicgroup;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.viber.voip.messages.a.a;
import com.viber.voip.messages.a.b;
import com.viber.voip.messages.conversation.ap;
import com.viber.voip.messages.conversation.ar;
import java.lang.reflect.Array;

public class PublicGroupInfoSmallParticipantList
  extends LinearLayout
{
  private ViewGroup[] a;
  private PublicGroupInfoParticipantView[][] b;
  private int c = 0;
  private int d;
  private int e;
  
  public PublicGroupInfoSmallParticipantList(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }
  
  public PublicGroupInfoSmallParticipantList(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }
  
  private void a(Context paramContext)
  {
    setOrientation(1);
    this.d = paramContext.getResources().getInteger(2131427352);
    this.e = paramContext.getResources().getInteger(2131427353);
    this.b = ((PublicGroupInfoParticipantView[][])Array.newInstance(PublicGroupInfoParticipantView.class, new int[] { this.d, this.e }));
    this.a = new ViewGroup[this.d];
    int i = paramContext.getResources().getDimensionPixelSize(2131362304);
    for (int j = 0; j < this.d; j++)
    {
      LinearLayout localLinearLayout = new LinearLayout(paramContext);
      localLinearLayout.setOrientation(0);
      if (j > 0) {
        localLinearLayout.setPadding(0, i, 0, 0);
      }
      this.a[j] = localLinearLayout;
      addView(localLinearLayout);
      for (int k = 0; k < this.e; k++)
      {
        if (k > 0) {
          localLinearLayout.addView(new View(paramContext), new LinearLayout.LayoutParams(1, 1, 1.0F));
        }
        PublicGroupInfoParticipantView localPublicGroupInfoParticipantView = new PublicGroupInfoParticipantView(paramContext);
        this.b[j][k] = localPublicGroupInfoParticipantView;
        localLinearLayout.addView(localPublicGroupInfoParticipantView);
      }
    }
  }
  
  public void a()
  {
    for (int i = 0; i < this.d; i++)
    {
      this.a[i].setVisibility(8);
      for (int j = 0; j < this.e; j++) {
        this.b[i][j].a();
      }
    }
    this.c = 0;
  }
  
  public void a(ap paramap, int paramInt)
  {
    int i = paramap.getCount();
    for (int j = 0; j < i; j++) {
      a(paramap.e(j), paramInt);
    }
  }
  
  public void a(ar paramar, int paramInt)
  {
    int i = this.c / this.e;
    int j = this.c % this.e;
    this.a[i].setVisibility(0);
    Uri localUri = b.d().a(paramar.b(), true);
    this.b[i][j].a(paramar.a(paramInt), localUri, paramar.o(), paramar.h(), paramar.f(), paramar.g());
    this.b[i][j].setDefaultOnClickListener(paramInt);
    this.c = (1 + this.c);
  }
  
  public int getMaxCount()
  {
    return this.d * this.e;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.PublicGroupInfoSmallParticipantList
 * JD-Core Version:    0.7.0.1
 */
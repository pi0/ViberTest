package com.viber.voip.messages.conversation.publicgroup;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.TextUtils.TruncateAt;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.viber.jni.PublicGroupInfo;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.util.b.w;
import com.viber.voip.util.b.x;
import com.viber.voip.util.b.z;
import com.viber.voip.util.gl;
import com.viber.voip.util.hv;
import it.sephiroth.android.library.widget.i;
import java.util.ArrayList;

class bl
  extends BaseAdapter
{
  private final int a;
  private final int b;
  private final int c;
  private final int d;
  private final int e;
  private final int f;
  private final Context g;
  private ArrayList<PublicGroupInfo> h = new ArrayList();
  private final w i;
  private final x j;
  private Bitmap k;
  
  public bl(Context paramContext, ArrayList<PublicGroupInfo> paramArrayList)
  {
    this.g = paramContext;
    this.c = paramContext.getResources().getDimensionPixelSize(2131362290);
    this.d = paramContext.getResources().getDimensionPixelSize(2131362292);
    this.a = paramContext.getResources().getDimensionPixelSize(2131362294);
    this.b = paramContext.getResources().getDimensionPixelSize(2131362291);
    this.e = paramContext.getResources().getDimensionPixelSize(2131362295);
    this.f = a(paramContext);
    this.h.addAll(paramArrayList);
    this.i = w.a(paramContext);
    Bitmap.Config localConfig = Bitmap.Config.ARGB_8888;
    this.k = Bitmap.createBitmap(this.f, this.f, localConfig);
    Canvas localCanvas = new Canvas(this.k);
    int m = this.g.getResources().getColor(2131296471);
    Paint localPaint = new Paint();
    Rect localRect = new Rect(0, 0, this.k.getWidth(), this.k.getHeight());
    RectF localRectF = new RectF(localRect);
    float f1 = this.g.getResources().getDimensionPixelSize(2131362318);
    localPaint.setAntiAlias(true);
    localCanvas.drawARGB(0, 0, 0, 0);
    localPaint.setColor(m);
    localCanvas.drawRoundRect(localRectF, f1, f1, localPaint);
    localPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    localCanvas.drawBitmap(this.k, localRect, localRect, localPaint);
    this.j = new z().c(false).a(new bj(paramContext, this.f)).a(this.k).b();
  }
  
  private int a(Context paramContext)
  {
    int[] arrayOfInt = h.a(paramContext);
    int m = 2 * this.c;
    if (!gl.e(paramContext)) {
      return (arrayOfInt[0] - m - 2 * this.d) / 3;
    }
    if (gl.d()) {}
    for (int n = h.b(((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay()).x;; n = arrayOfInt[1]) {
      return (n - m - 4 * this.d) / 5;
    }
  }
  
  private View b()
  {
    RelativeLayout localRelativeLayout = new RelativeLayout(this.g);
    localRelativeLayout.setLayoutParams(new i(this.f, -2));
    localRelativeLayout.setPadding(this.a, 0, this.a, this.a);
    localRelativeLayout.setBackgroundResource(2130838347);
    ImageView localImageView1 = new ImageView(this.g);
    localImageView1.setImageBitmap(this.k);
    localRelativeLayout.addView(localImageView1, new RelativeLayout.LayoutParams(this.f, this.f));
    ProgressBar localProgressBar = new ProgressBar(this.g);
    Drawable localDrawable = this.g.getResources().getDrawable(2130838574);
    localDrawable.setBounds(new Rect(0, 0, this.f / 3, this.f / 3));
    localProgressBar.setIndeterminateDrawable(localDrawable);
    RelativeLayout.LayoutParams localLayoutParams1 = new RelativeLayout.LayoutParams(this.f / 3, this.f / 3);
    localLayoutParams1.topMargin = (this.f / 2 - this.f / 6);
    localLayoutParams1.leftMargin = localLayoutParams1.topMargin;
    localProgressBar.setTag("public_groups_suggestion_progress");
    localRelativeLayout.addView(localProgressBar, localLayoutParams1);
    ImageView localImageView2 = new ImageView(this.g);
    localImageView2.setTag("public_groups_suggestion_image");
    localImageView2.setId(2131165305);
    localRelativeLayout.addView(localImageView2, new RelativeLayout.LayoutParams(this.f, this.f));
    TextView localTextView = new TextView(this.g);
    RelativeLayout.LayoutParams localLayoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams2.addRule(3, localImageView2.getId());
    localTextView.setTextColor(this.g.getResources().getColor(2131296344));
    localTextView.setTextSize(2, 14.0F);
    localTextView.setSingleLine(true);
    localTextView.setEllipsize(TextUtils.TruncateAt.END);
    localTextView.setPadding(this.a, this.b, this.a, this.b);
    localTextView.setCompoundDrawablePadding(this.e);
    localTextView.setTag("public_groups_suggestion_text");
    localRelativeLayout.addView(localTextView, localLayoutParams2);
    return localRelativeLayout;
  }
  
  public PublicGroupInfo a(int paramInt)
  {
    return (PublicGroupInfo)this.h.get(paramInt);
  }
  
  public ArrayList<PublicGroupInfo> a()
  {
    return this.h;
  }
  
  public void a(ArrayList<PublicGroupInfo> paramArrayList)
  {
    if (paramArrayList != null)
    {
      this.h.clear();
      this.h.addAll(paramArrayList);
      notifyDataSetChanged();
    }
  }
  
  public int getCount()
  {
    return this.h.size();
  }
  
  public long getItemId(int paramInt)
  {
    return a(paramInt).groupID;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null) {
      paramView = b();
    }
    PublicGroupInfo localPublicGroupInfo = a(paramInt);
    ImageView localImageView = (ImageView)paramView.findViewWithTag("public_groups_suggestion_image");
    this.i.a(hv.b(localPublicGroupInfo.iconId), localImageView, this.j);
    ((TextView)paramView.findViewWithTag("public_groups_suggestion_text")).setText(localPublicGroupInfo.groupName);
    paramView.setTag(localPublicGroupInfo);
    return paramView;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.conversation.publicgroup.bl
 * JD-Core Version:    0.7.0.1
 */
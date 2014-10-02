package com.viber.voip.messages.conversation;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils.TruncateAt;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.EditText;
import android.widget.TextView;
import com.viber.voip.ViberApplication;
import com.viber.voip.util.l;
import com.viber.voip.widget.aa;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ax
{
  private static final String a = ax.class.getSimpleName();
  private static Pattern b = Pattern.compile("\\S+");
  private Handler c = new Handler();
  private int d;
  private int e;
  private Context f;
  private aa g;
  private TextView h;
  private int i;
  private bi j = new bi(null);
  
  private ax(Context paramContext)
  {
    this.f = paramContext;
    this.d = paramContext.getResources().getColor(2131296424);
    this.e = paramContext.getResources().getColor(2131296442);
  }
  
  private static Bitmap a(View paramView)
  {
    int k = View.MeasureSpec.makeMeasureSpec(0, 0);
    paramView.measure(k, k);
    paramView.layout(0, 0, paramView.getMeasuredWidth(), paramView.getMeasuredHeight());
    Canvas localCanvas = new Canvas(Bitmap.createBitmap(Math.max(paramView.getWidth(), 1), Math.max(paramView.getHeight(), 1), Bitmap.Config.ARGB_8888));
    localCanvas.translate(-paramView.getScrollX(), -paramView.getScrollY());
    paramView.draw(localCanvas);
    paramView.setDrawingCacheEnabled(true);
    Bitmap localBitmap = paramView.getDrawingCache().copy(Bitmap.Config.ARGB_8888, true);
    paramView.destroyDrawingCache();
    return localBitmap;
  }
  
  private Drawable a(Context paramContext, CharSequence paramCharSequence, int paramInt, float paramFloat, boolean paramBoolean)
  {
    Bitmap localBitmap = b(paramContext, paramCharSequence, paramInt, paramFloat, paramBoolean);
    BitmapDrawable localBitmapDrawable = new BitmapDrawable(paramContext.getResources(), localBitmap);
    localBitmapDrawable.setBounds(0, 0, localBitmapDrawable.getIntrinsicWidth(), localBitmapDrawable.getIntrinsicHeight());
    return localBitmapDrawable;
  }
  
  public static ax a(aa paramaa)
  {
    ax localax = new ax(paramaa.getContext());
    localax.b(paramaa);
    return localax;
  }
  
  private String a(String[] paramArrayOfString, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int k = paramArrayOfString.length;
    for (int m = 0; m < k; m++) {
      localStringBuilder.append(paramArrayOfString[m]).append(" ");
    }
    if ((!paramBoolean) && (localStringBuilder.length() > 0)) {
      localStringBuilder.setLength(-1 + localStringBuilder.length());
    }
    return localStringBuilder.toString();
  }
  
  private void a(int paramInt)
  {
    this.c.post(new bh(this, paramInt));
  }
  
  private void a(Spannable paramSpannable)
  {
    int k = 0;
    bj[] arrayOfbj = (bj[])paramSpannable.getSpans(0, paramSpannable.length(), bj.class);
    int m = arrayOfbj.length;
    while (k < m)
    {
      paramSpannable.removeSpan(arrayOfbj[k]);
      k++;
    }
    b(paramSpannable);
  }
  
  private void a(Spannable paramSpannable, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramInt1 != paramInt2) {
      if (this.g == null) {
        break label57;
      }
    }
    label57:
    for (float f1 = this.g.getTextSize();; f1 = this.h.getTextSize())
    {
      paramSpannable.setSpan(new bj(this, this.f, paramSpannable.subSequence(paramInt1, paramInt2), 0, f1, paramBoolean), paramInt1, paramInt2, 33);
      return;
    }
  }
  
  private void a(EditText paramEditText)
  {
    c("updateTagSpanColors");
    Editable localEditable = paramEditText.getText();
    String str = localEditable.toString();
    int k = paramEditText.getSelectionStart();
    bj[] arrayOfbj = (bj[])localEditable.getSpans(0, str.length(), bj.class);
    int m = arrayOfbj.length;
    int n = 0;
    if (n < m)
    {
      bj localbj = arrayOfbj[n];
      int i1 = localEditable.getSpanStart(localbj);
      int i2 = localEditable.getSpanEnd(localbj);
      if ((k > i1) && (k <= i2)) {}
      for (boolean bool = true;; bool = false)
      {
        if (bool != localbj.a)
        {
          localEditable.removeSpan(localbj);
          a(localEditable, i1, i2, bool);
        }
        n++;
        break;
      }
    }
  }
  
  private void a(TextView paramTextView, String paramString)
  {
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(paramString);
    b(localSpannableStringBuilder);
    paramTextView.setText(localSpannableStringBuilder);
  }
  
  private boolean a(int paramInt, bi parambi)
  {
    Editable localEditable = this.g.getText();
    if (paramInt > localEditable.length()) {}
    while ((localEditable.length() == 0) || ((paramInt < localEditable.length()) && (localEditable.charAt(paramInt) == ' ') && ((paramInt == 0) || ((paramInt > 0) && (localEditable.charAt(paramInt - 1) == ' '))))) {
      return false;
    }
    for (parambi.a = paramInt; (parambi.a > 0) && (localEditable.charAt(-1 + parambi.a) != ' '); parambi.a = (-1 + parambi.a)) {}
    if ((paramInt == localEditable.length()) || (localEditable.charAt(paramInt) == ' ')) {
      parambi.b = paramInt;
    }
    for (;;)
    {
      return true;
      for (parambi.b = (paramInt + 1); (parambi.b < localEditable.length()) && (localEditable.charAt(parambi.b) != ' '); parambi.b = (1 + parambi.b)) {}
    }
  }
  
  private Bitmap b(Context paramContext, CharSequence paramCharSequence, int paramInt, float paramFloat, boolean paramBoolean)
  {
    TextView localTextView = new TextView(paramContext);
    localTextView.setText(ViberApplication.getInstance().getBiDiAwareFormatter().a(paramCharSequence.toString()));
    localTextView.setSingleLine();
    localTextView.setEllipsize(TextUtils.TruncateAt.END);
    int k;
    if (paramBoolean)
    {
      k = this.e;
      localTextView.setTextColor(k);
      localTextView.setTextSize(paramInt, paramFloat);
      localTextView.setMaxWidth(this.g.getWidth() - this.g.getPaddingLeft() - this.g.getPaddingRight() - paramContext.getResources().getDimensionPixelSize(2131362346));
      if (!paramBoolean) {
        break label140;
      }
    }
    label140:
    for (int m = 2130838539;; m = 2130838538)
    {
      localTextView.setBackgroundResource(m);
      return a(localTextView);
      k = this.d;
      break;
    }
  }
  
  private void b(Spannable paramSpannable)
  {
    Matcher localMatcher = b.matcher(paramSpannable);
    while (localMatcher.find()) {
      a(paramSpannable, localMatcher.start(), localMatcher.end(), false);
    }
  }
  
  private void b(aa paramaa)
  {
    this.g = paramaa;
    this.g.a();
    b();
  }
  
  private String[] b(String paramString)
  {
    return paramString.trim().split(" +");
  }
  
  private int c()
  {
    return a().length;
  }
  
  private static void c(String paramString) {}
  
  public void a(String[] paramArrayOfString)
  {
    if (this.g != null)
    {
      a(this.g, a(paramArrayOfString, true));
      this.c.post(new ay(this));
      return;
    }
    a(this.h, a(paramArrayOfString, false));
  }
  
  public String[] a()
  {
    if (this.g != null) {
      return b(this.g.getText().toString());
    }
    return b(this.h.getText().toString());
  }
  
  public void b()
  {
    c("setupEditorListeners");
    az localaz = new az(this);
    this.g.addTextChangedListener(new ba(this, localaz));
    this.g.setOnSelectionChangedListener(new bb(this, localaz));
    be localbe = new be(this);
    this.g.setFilters(new InputFilter[] { localbe });
    this.g.setOnFocusChangeListener(new bg(this));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.conversation.ax
 * JD-Core Version:    0.7.0.1
 */
package com.viber.voip.messages.ui;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.SparseArray;
import com.viber.voip.ViberApplication;
import com.viber.voip.messages.extras.image.h;
import com.viber.voip.util.bj;
import com.viber.voip.util.o;
import com.viber.voip.w;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class bd
{
  public static final int a;
  public static final int b;
  public static final int c;
  public static final int d;
  public static WeakReference<bd> e = new WeakReference(null);
  private static final String f = bd.class.getSimpleName();
  private static final bf[] g;
  private static final SparseArray<bf> h = new SparseArray();
  private static final Map<String, bf> i = new HashMap();
  private static final Map<String, bf> j = new HashMap();
  private static final Map<String, bf> k = new HashMap();
  private static final int l;
  private static ArrayList<bf> m = new ArrayList();
  private static int n;
  private o<String> o = new o(ViberApplication.getInstance().getApplicationContext(), "EmoticonStore", 0.03125F);
  
  static
  {
    l();
    g = (bf[])m.toArray(new bf[m.size()]);
    m = null;
    Resources localResources = ViberApplication.getInstance().getApplicationContext().getResources();
    a = localResources.getDimensionPixelSize(2131361993);
    b = localResources.getDimensionPixelSize(2131361996);
    c = localResources.getDimensionPixelSize(2131361997);
    d = localResources.getDimensionPixelSize(2131361998);
    new File(w.x).mkdirs();
    bj.f(w.x);
    l = n;
  }
  
  public static bd a()
  {
    try
    {
      bd localbd = (bd)e.get();
      if (localbd == null)
      {
        localbd = new bd();
        e = new WeakReference(localbd);
      }
      return localbd;
    }
    finally {}
  }
  
  private static bf a(String paramString, Character paramCharacter)
  {
    bf localbf = new bf(paramString, paramCharacter, null);
    m.add(localbf);
    if (n < paramString.length()) {
      n = paramString.length();
    }
    return localbf;
  }
  
  private static void l()
  {
    bf.a(bf.a(bf.a(bf.a(bf.a(bf.a(bf.a(bf.a(bf.a(bf.a(bf.a(a("(smiley)", Character.valueOf('޲')), 128522), 128516), 128515), 128512), 57430), 58389), 58388), "(:"), ":)"), ":-)"), "(-:");
    bf.a(bf.a(bf.a(bf.a(bf.a(bf.a(bf.a(a("(sad)", Character.valueOf('޳')), 128546), 58387), ":("), "):"), ":-("), ")-:"), ">:[");
    bf.a(bf.a(bf.a(bf.a(bf.a(bf.a(a("(wink)", Character.valueOf('޴')), 128521), 58373), ";)"), "(;"), ";-)"), "(-;");
    bf.a(bf.a(bf.a(bf.a(a("(angry)", Character.valueOf('޵')), 128545), 58390), ":-||"), ":@");
    bf.a(bf.a(a("(inlove)", Character.valueOf('޶')), 128525), 57606);
    bf.a(bf.a(bf.a(bf.a(bf.a(bf.a(bf.a(a("(yummi)", Character.valueOf('޷')), 128540), 128541), 128539), 128523), 58377), ":P"), ":-P");
    a("(laugh)", Character.valueOf('޸'));
    bf.a(bf.a(bf.a(bf.a(a("(surprised)", Character.valueOf('޹')), 128551), 58381), ":-O"), "O-:");
    bf.a(bf.a(bf.a(bf.a(bf.a(bf.a(bf.a(bf.a(bf.a(a("(moa)", Character.valueOf('޺')), 128536), 128538), 128535), 128537), 58392), ":*"), ":-*"), "*-:"), "*:");
    bf.a(bf.a(bf.a(a("(happy)", Character.valueOf('޻')), 128518), 9786), 57431);
    bf.a(bf.a(bf.a(bf.a(bf.a(bf.a(a("(cry)", Character.valueOf('޼')), 128557), 58385), ":'("), ":'-("), ")-':"), ")':");
    bf.a(bf.a(a("(sick)", Character.valueOf('޽')), 128567), 58380);
    a("(shy)", Character.valueOf('޾'));
    bf.a(bf.a(bf.a(bf.a(a("(teeth)", Character.valueOf('޿')), 128513), 58372), ":D"), ":-D");
    a("(tongue)", Character.valueOf('߀'));
    a("(money)", Character.valueOf('߁'));
    bf.a(bf.a(a("(mad)", Character.valueOf('߂')), 128544), 57433);
    a("(flirt)", Character.valueOf('߃'));
    a("(crazy)", Character.valueOf('߄'));
    a("(confused)", Character.valueOf('߅'));
    bf.a(bf.a(bf.a(bf.a(bf.a(bf.a(a("(depressed)", Character.valueOf('߹')), 128532), 128547), 128542), 58371), 58374), 57432);
    a("(scream)", Character.valueOf('߼'));
    a("(nerd)", Character.valueOf('ߺ'));
    bf.a(a("(not_sure)", Character.valueOf('߻')), 128533);
    bf.a(a("(cool)", Character.valueOf('߸')), 128526);
    bf.a(bf.a(a("(devil)", Character.valueOf('߆')), "3:-)"), "3:)");
    bf.a(a("(angel)", Character.valueOf('߇')), "0:-)");
    bf.a(bf.a(bf.a(a("(heart)", Character.valueOf('߈')), 10084), 57378), "<3");
    bf.a(bf.a(a("(purple_heart)", Character.valueOf('߉')), 128156), 58157);
    bf.a(bf.a(a("(heart_break)", Character.valueOf('ߊ')), 128148), 57379);
    bf.a(bf.a(a("(V)", Character.valueOf('ߋ')), 9996), 57361);
    bf.a(bf.a(a("(unlike)", Character.valueOf('ߌ')), 128078), 58401);
    bf.a(bf.a(a("(like)", Character.valueOf('ߍ')), 128077), 57358);
    bf.b(a("(!)", Character.valueOf('ߎ')), "exclamation");
    a("(Q)", Character.valueOf('ߏ'));
    bf.a(bf.a(a("(kiss)", Character.valueOf('ߐ')), 128139), 57347);
    bf.a(bf.a(a("(ice_cream)", Character.valueOf('ߑ')), 127846), 58170);
    a("(cupcake)", Character.valueOf('ߒ'));
    bf.a(bf.a(a("(burger)", Character.valueOf('ߓ')), 127828), 57632);
    bf.a(a("(pizza)", Character.valueOf('ߔ')), 127829);
    bf.a(bf.a(a("(wine)", Character.valueOf('ߕ')), 127863), 57412);
    bf.a(bf.a(a("(beer)", Character.valueOf('ߖ')), 127866), 57415);
    a("(soda)", Character.valueOf('ߗ'));
    bf.a(bf.a(a("(coffee)", Character.valueOf('ߘ')), 57413), 9749);
    a("(popcorn)", Character.valueOf('ߙ'));
    bf.a(bf.a(a("(poo)", Character.valueOf('ߚ')), 128169), 57434);
    a("(cigarette)", Character.valueOf('ߛ'));
    bf.a(bf.a(bf.b(a("($)", Character.valueOf('ߜ')), "dollar"), 128178), 57647);
    bf.a(a("(car)", Character.valueOf('ߝ')), 128664);
    bf.a(a("(airplane)", Character.valueOf('ߞ')), 9992);
    a("(sun)", Character.valueOf('ߟ'));
    a("(moon)", Character.valueOf('ߠ'));
    a("(rain)", Character.valueOf('ߡ'));
    a("(cloud)", Character.valueOf('ߢ'));
    bf.a(bf.a(a("(zzz)", Character.valueOf('ߣ')), 128164), 57660);
    a("(skull)", Character.valueOf('ߤ'));
    bf.a(bf.a(a("(fire)", Character.valueOf('ߥ')), 128293), 57629);
    bf.a(bf.a(a("(music)", Character.valueOf('ߦ')), 127925), 57406);
    a("(flower)", Character.valueOf('ߧ'));
    a("(christmas_tree)", Character.valueOf('ߨ'));
    a("(monkey)", Character.valueOf('߿'));
    a("(chick)", Character.valueOf('ࠄ'));
    bf.a(a("(cat)", Character.valueOf('߫')), 128008);
    bf.a(a("(dog)", Character.valueOf('߬')), 128021);
    bf.a(bf.a(a("(pig)", Character.valueOf('߭')), 128022), 128055);
    a("(koala)", Character.valueOf('ࠁ'));
    a("(kangaroo)", Character.valueOf('ࠂ'));
    a("(ladybug)", Character.valueOf('ࠀ'));
    a("(panda)", Character.valueOf('߾'));
    a("(sheep)", Character.valueOf('߽'));
    bf.a(bf.a(a("(soccer)", Character.valueOf('߮')), 9917), 57368);
    bf.a(bf.a(a("(football)", Character.valueOf('߯')), 127944), 58411);
    bf.a(bf.a(a("(basketball)", Character.valueOf('߰')), 127936), 58410);
    bf.a(bf.a(a("(baseball)", Character.valueOf('߱')), 9918), 57366);
    a("(relax)", Character.valueOf('߲'));
    bf.a(bf.a(a("(tape)", Character.valueOf('߳')), 128252), 57641);
    bf.a(bf.a(a("(phone)", Character.valueOf('ߴ')), 128241), 57354);
    a("(console)", Character.valueOf('ߵ'));
    bf.a(bf.a(a("(time)", Character.valueOf('߶')), 128343), 57387);
    bf.a(bf.a(a("(TV)", Character.valueOf('߷')), 128250), 57642);
    bf.a(bf.a(a("(light_bulb)", Character.valueOf('ߩ')), 128161), 57615);
    bf.a(bf.a(a("(run)", Character.valueOf('ߪ')), 127939), 57621);
    bf.a(bf.a(a("(clap)", Character.valueOf('ࠃ')), 128079), 58399);
    a("(bicycle)", Character.valueOf('ࠆ'));
    a("(cards)", Character.valueOf('ࠅ'));
    a("(facepalm)", Character.valueOf('ࠇ'));
    bf.a(a("(sleeping)", Character.valueOf('ࠈ')), 128564);
  }
  
  public Bitmap a(bf parambf)
  {
    Object localObject = (Bitmap)this.o.get(bf.a(parambf));
    Bitmap localBitmap1;
    String str;
    if (localObject == null)
    {
      localBitmap1 = BitmapFactory.decodeFile(bf.b(parambf));
      if (localBitmap1 != null) {
        break label58;
      }
      str = bf.c(parambf);
    }
    label58:
    try
    {
      Bitmap localBitmap2 = BitmapFactory.decodeStream(ViberApplication.getInstance().getAssets().open(str));
      localObject = localBitmap2;
      return localObject;
    }
    catch (IOException localIOException) {}
    this.o.put(bf.a(parambf), localBitmap1);
    return localBitmap1;
    return localBitmap1;
  }
  
  public bf a(int paramInt)
  {
    return (bf)h.get(paramInt);
  }
  
  public bf a(String paramString)
  {
    return (bf)j.get(paramString.toLowerCase());
  }
  
  public bf b(String paramString)
  {
    return (bf)k.get(paramString);
  }
  
  public Map<String, bf> b()
  {
    return i;
  }
  
  public int c()
  {
    return l;
  }
  
  public bf c(String paramString)
  {
    return (bf)i.get(paramString);
  }
  
  public int d()
  {
    return -2 + g.length;
  }
  
  public bf[] e()
  {
    return g;
  }
  
  public void f()
  {
    new be(this).execute(new Void[0]);
  }
  
  public void finalize() {}
  
  public void g()
  {
    bf[] arrayOfbf = g;
    int i1 = arrayOfbf.length;
    int i2 = 0;
    for (;;)
    {
      if (i2 < i1)
      {
        bf localbf = arrayOfbf[i2];
        String str1 = bf.c(localbf);
        String str2 = bf.b(localbf);
        if (!new File(str2).exists()) {}
        try
        {
          h.c(h.a(str1, str2, a, a));
          i2++;
        }
        catch (IOException localIOException)
        {
          for (;;)
          {
            localIOException.printStackTrace();
          }
        }
      }
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.bd
 * JD-Core Version:    0.7.0.1
 */
package com.viber.voip;

import android.content.Context;
import android.content.UriMatcher;
import android.os.Environment;
import com.viber.jni.Version;
import com.viber.voip.registration.dj;
import com.viber.voip.settings.j;
import com.viber.voip.settings.l;
import java.io.File;
import java.text.SimpleDateFormat;

public final class w
{
  public static final String A;
  public static final String B;
  public static final UriMatcher C;
  public static final SimpleDateFormat a;
  public static final SimpleDateFormat b;
  public static final SimpleDateFormat c;
  public static final String d;
  public static final String e;
  public static final String f;
  public static final String g;
  public static final String h;
  public static final String i;
  public static final String j;
  public static final String k;
  public static final String l;
  public static final String m;
  public static final String n;
  public static final String o;
  public static final String p;
  public static final String q;
  public static final String r;
  public static final String s;
  public static final String t;
  public static final String u;
  public static final String v;
  public static final String w;
  public static final String x;
  public static final String y;
  public static final String z;
  
  static
  {
    boolean bool;
    if (!w.class.desiredAssertionStatus())
    {
      bool = true;
      D = bool;
      a = new SimpleDateFormat("MM-dd HH:mm:ss.SSS");
      b = new SimpleDateFormat("mm:ss");
      c = new SimpleDateFormat("yyyy_MM_dd_HH_mm");
      d = Environment.getExternalStorageDirectory().getAbsolutePath() + "/" + "viber" + "/";
      e = d + ".logs" + "/";
      f = d + ".db" + "/";
      g = e + "trace" + "/";
      h = e + "crash" + "/";
      i = d + ".keychain";
      j = d + "u.keychain";
      k = d + "h.keychain";
      l = d + ".s_keychain";
      m = d + ".su_keychain";
      n = d + ".userdata";
      o = d + ".viber";
      p = d + "media/";
      q = p + "Viber Images/";
      r = p + "Viber Videos/";
      s = p + ".public_cache/";
      t = p + ".cache/";
      u = p + ".ptt";
      v = p + ".thumbnails/";
      w = p + ".stickers/";
      x = p + ".emoticons/";
      y = p + v;
      z = p + ".temp/";
      A = p + "User photos/";
      B = p + ".backgrounds/";
      if (u.charAt(0) != '/') {
        break label782;
      }
    }
    label782:
    for (String str = u.substring(1);; str = u)
    {
      C = new UriMatcher(-1);
      C.addURI("media", "external/video/media/#", 1);
      C.addURI("media", "external/images/media/#", 2);
      C.addURI("media", "internal/images/media/#", 2);
      C.addURI("*", str + "*", 3);
      return;
      bool = false;
      break;
    }
  }
  
  private w()
  {
    if (!D) {
      throw new AssertionError();
    }
  }
  
  public static final String a()
  {
    return "";
  }
  
  public static String b()
  {
    return ViberApplication.getInstance().getAppVersion();
  }
  
  public static String c()
  {
    Version localVersion = Version.parseVersionString(ViberApplication.getInstance().getAppVersion());
    String str = localVersion.Major + "." + localVersion.Minor + "." + localVersion.MinorMinor;
    ViberApplication.preferences().b(j.B(), "int");
    return "Version " + str + a() + "";
  }
  
  public static String d()
  {
    return ViberApplication.getInstance().getApplicationContext().getFilesDir().getAbsolutePath() + "/" + "crash" + "/";
  }
  
  public static String e()
  {
    if (dj.d()) {
      return "AndroidTablet";
    }
    return "Android";
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.w
 * JD-Core Version:    0.7.0.1
 */
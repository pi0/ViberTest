package com.viber.voip.sound.tonegen;

public class ToneRule
{
  public static final String TAG = ToneRule.class.getSimpleName();
  private final String _tones;
  private int[] android_tones;
  private boolean isUrgent = false;
  private int[] pauses;
  private int repeat_count;
  private final String toneName;
  
  public ToneRule(String paramString, int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt)
  {
    this(paramString, paramArrayOfInt1, paramArrayOfInt2, paramInt, false);
  }
  
  public ToneRule(String paramString, int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt, boolean paramBoolean)
  {
    this.android_tones = paramArrayOfInt1;
    this.pauses = paramArrayOfInt2;
    this.repeat_count = paramInt;
    this.toneName = paramString;
    Object localObject = new String();
    int i = 0;
    if ((paramArrayOfInt1 != null) && (i < paramArrayOfInt1.length))
    {
      StringBuilder localStringBuilder = new StringBuilder().append((String)localObject);
      if (i == 0) {}
      for (String str1 = "";; str1 = ", ")
      {
        String str2 = str1 + paramArrayOfInt1[i];
        i++;
        localObject = str2;
        break;
      }
    }
    this._tones = ((String)localObject);
    this.isUrgent = paramBoolean;
  }
  
  public final int[] getPauses()
  {
    return this.pauses;
  }
  
  public final int getRepeatCount()
  {
    return this.repeat_count;
  }
  
  public final int[] getTonesArray()
  {
    return this.android_tones;
  }
  
  public final boolean isLooped()
  {
    return -1 == this.repeat_count;
  }
  
  public final boolean isUrgent()
  {
    return this.isUrgent;
  }
  
  public String toString()
  {
    return TAG + "[loop:" + isLooped() + "; tones={" + this._tones + "}; " + this.toneName + "]";
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.tonegen.ToneRule
 * JD-Core Version:    0.7.0.1
 */
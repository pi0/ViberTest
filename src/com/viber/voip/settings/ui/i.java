package com.viber.voip.settings.ui;

import com.viber.voip.util.fl;

class i
  implements fl
{
  i(a parama) {}
  
  /* Error */
  public void onQueryComplete(int paramInt, Object paramObject, android.database.Cursor paramCursor)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 4
    //   3: aload_0
    //   4: getfield 12	com/viber/voip/settings/ui/i:a	Lcom/viber/voip/settings/ui/a;
    //   7: getfield 23	com/viber/voip/settings/ui/a:e	Landroid/preference/PreferenceScreen;
    //   10: invokestatic 28	com/viber/voip/settings/j:a	()Ljava/lang/String;
    //   13: invokevirtual 34	android/preference/PreferenceScreen:findPreference	(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    //   16: astore 6
    //   18: aload_3
    //   19: invokestatic 40	com/viber/voip/util/al:b	(Landroid/database/Cursor;)Z
    //   22: ifne +66 -> 88
    //   25: aload_3
    //   26: invokeinterface 46 1 0
    //   31: ifle +57 -> 88
    //   34: iload 4
    //   36: istore 7
    //   38: aload 6
    //   40: iload 7
    //   42: invokevirtual 52	android/preference/Preference:setEnabled	(Z)V
    //   45: aload_0
    //   46: getfield 12	com/viber/voip/settings/ui/i:a	Lcom/viber/voip/settings/ui/a;
    //   49: getfield 23	com/viber/voip/settings/ui/a:e	Landroid/preference/PreferenceScreen;
    //   52: invokestatic 54	com/viber/voip/settings/j:b	()Ljava/lang/String;
    //   55: invokevirtual 34	android/preference/PreferenceScreen:findPreference	(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    //   58: astore 8
    //   60: aload_3
    //   61: invokestatic 40	com/viber/voip/util/al:b	(Landroid/database/Cursor;)Z
    //   64: ifne +30 -> 94
    //   67: aload_3
    //   68: invokeinterface 46 1 0
    //   73: ifle +21 -> 94
    //   76: aload 8
    //   78: iload 4
    //   80: invokevirtual 52	android/preference/Preference:setEnabled	(Z)V
    //   83: aload_3
    //   84: invokestatic 57	com/viber/voip/util/al:a	(Landroid/database/Cursor;)V
    //   87: return
    //   88: iconst_0
    //   89: istore 7
    //   91: goto -53 -> 38
    //   94: iconst_0
    //   95: istore 4
    //   97: goto -21 -> 76
    //   100: astore 5
    //   102: aload_3
    //   103: invokestatic 57	com/viber/voip/util/al:a	(Landroid/database/Cursor;)V
    //   106: aload 5
    //   108: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	109	0	this	i
    //   0	109	1	paramInt	int
    //   0	109	2	paramObject	Object
    //   0	109	3	paramCursor	android.database.Cursor
    //   1	95	4	bool1	boolean
    //   100	7	5	localObject	Object
    //   16	23	6	localPreference1	android.preference.Preference
    //   36	54	7	bool2	boolean
    //   58	19	8	localPreference2	android.preference.Preference
    // Exception table:
    //   from	to	target	type
    //   3	34	100	finally
    //   38	76	100	finally
    //   76	83	100	finally
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.settings.ui.i
 * JD-Core Version:    0.7.0.1
 */
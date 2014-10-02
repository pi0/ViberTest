package org.webrtc.videoengine;

import android.util.JsonReader;
import java.util.Map;

class ViEOMXHelper$OMXQuirks
{
  @ViEOMXHelper.Native
  final int decoder;
  @ViEOMXHelper.Native
  private int decoderInputTimeout = -2;
  @ViEOMXHelper.Native
  private int decoderOutputTimeout = -2;
  @ViEOMXHelper.Native
  final boolean direct_input;
  @ViEOMXHelper.Native
  final int encoder;
  @ViEOMXHelper.Native
  private int encoderBitRate = -1;
  @ViEOMXHelper.Native
  private int encoderFrameRate = -1;
  @ViEOMXHelper.Native
  private int encoderInputTimeout = -2;
  @ViEOMXHelper.Native
  private int encoderOutputTimeout = -2;
  @ViEOMXHelper.Native
  final String forcedDecoderType;
  @ViEOMXHelper.Native
  final String forcedEncoderType;
  @ViEOMXHelper.Native
  final int forcedOrientation = -1;
  
  public ViEOMXHelper$OMXQuirks(int paramInt)
  {
    this.decoder = paramInt;
    this.encoder = paramInt;
    this.forcedEncoderType = null;
    this.forcedDecoderType = null;
    if (2130708361 == this.encoder) {}
    for (boolean bool = true;; bool = false)
    {
      this.direct_input = bool;
      return;
    }
  }
  
  public ViEOMXHelper$OMXQuirks(int paramInt1, int paramInt2)
  {
    this.encoder = paramInt1;
    this.decoder = paramInt2;
    this.forcedEncoderType = null;
    this.forcedDecoderType = null;
    if (2130708361 == paramInt1) {}
    for (boolean bool = true;; bool = false)
    {
      this.direct_input = bool;
      return;
    }
  }
  
  public ViEOMXHelper$OMXQuirks(int paramInt1, int paramInt2, String paramString)
  {
    this.encoder = paramInt1;
    this.decoder = paramInt2;
    this.forcedEncoderType = paramString;
    this.forcedDecoderType = null;
    if (2130708361 == paramInt1) {}
    for (boolean bool = true;; bool = false)
    {
      this.direct_input = bool;
      return;
    }
  }
  
  public ViEOMXHelper$OMXQuirks(int paramInt1, int paramInt2, String paramString1, String paramString2)
  {
    this.encoder = paramInt1;
    this.decoder = paramInt2;
    this.forcedEncoderType = paramString1;
    this.forcedDecoderType = paramString2;
    if (2130708361 == paramInt1) {}
    for (boolean bool = true;; bool = false)
    {
      this.direct_input = bool;
      return;
    }
  }
  
  public ViEOMXHelper$OMXQuirks(int paramInt1, int paramInt2, String paramString1, String paramString2, boolean paramBoolean)
  {
    this.encoder = paramInt1;
    this.decoder = paramInt2;
    this.forcedEncoderType = paramString1;
    this.forcedDecoderType = paramString2;
    this.direct_input = paramBoolean;
  }
  
  public ViEOMXHelper$OMXQuirks(int paramInt, String paramString)
  {
    this.decoder = paramInt;
    this.encoder = paramInt;
    this.forcedEncoderType = paramString;
    this.forcedDecoderType = null;
    if (2130708361 == this.encoder) {}
    for (boolean bool = true;; bool = false)
    {
      this.direct_input = bool;
      return;
    }
  }
  
  public static boolean fromJSON(JsonReader paramJsonReader, Map<String, OMXQuirks> paramMap1, Map<String, OMXQuirks> paramMap2)
  {
    Object localObject1 = null;
    int i = -1;
    int j = -1;
    int k = 0;
    boolean bool1 = false;
    Object localObject2 = null;
    Object localObject3 = null;
    int m = -2;
    int n = -2;
    int i1 = -2;
    int i2 = -2;
    int i3 = -1;
    int i4 = -1;
    paramJsonReader.beginObject();
    for (;;)
    {
      Object localObject4;
      int i7;
      int i8;
      Object localObject5;
      int i6;
      int i10;
      int i11;
      Object localObject6;
      int i12;
      int i13;
      int i14;
      boolean bool2;
      int i15;
      if (paramJsonReader.hasNext())
      {
        String str1 = paramJsonReader.nextName();
        if (str1 == null) {
          continue;
        }
        String str2 = str1.toLowerCase();
        try
        {
          if ("product".equals(str2))
          {
            String str5 = paramJsonReader.nextString();
            int i34 = i4;
            localObject4 = localObject3;
            i7 = n;
            i8 = j;
            localObject5 = str5;
            i6 = i34;
            int i35 = m;
            i10 = i;
            i11 = i3;
            localObject6 = localObject2;
            i12 = i1;
            i13 = k;
            i14 = i2;
            bool2 = bool1;
            i15 = i35;
          }
          else if ("encoder_colorspace".equals(str2))
          {
            int i32 = ViEOMXHelper.access$000(paramJsonReader);
            i6 = i4;
            localObject4 = localObject3;
            i7 = n;
            i8 = j;
            localObject5 = localObject1;
            int i33 = m;
            i10 = i32;
            i11 = i3;
            localObject6 = localObject2;
            i12 = i1;
            i13 = k;
            i14 = i2;
            bool2 = bool1;
            i15 = i33;
          }
          else if ("decoder_colorspace".equals(str2))
          {
            int i29 = ViEOMXHelper.access$000(paramJsonReader);
            localObject5 = localObject1;
            int i30 = i3;
            localObject6 = localObject2;
            i12 = i1;
            i13 = k;
            i14 = i2;
            bool2 = bool1;
            i15 = m;
            i10 = i;
            i11 = i30;
            int i31 = n;
            i8 = i29;
            i6 = i4;
            localObject4 = localObject3;
            i7 = i31;
          }
          else if ("direct_rendering".equals(str2))
          {
            boolean bool4 = paramJsonReader.nextBoolean();
            i14 = i2;
            bool2 = bool1;
            i15 = m;
            i10 = i;
            i11 = i3;
            localObject6 = localObject2;
            i12 = i1;
            i13 = bool4;
            i6 = i4;
            localObject4 = localObject3;
            i7 = n;
            i8 = j;
            localObject5 = localObject1;
          }
          else if ("direct_input".equals(str2))
          {
            boolean bool3 = paramJsonReader.nextBoolean();
            i6 = i4;
            localObject4 = localObject3;
            i7 = n;
            i8 = j;
            localObject5 = localObject1;
            int i28 = m;
            i10 = i;
            i11 = i3;
            localObject6 = localObject2;
            i12 = i1;
            i13 = k;
            i14 = i2;
            bool2 = bool3;
            i15 = i28;
          }
          else if ("encoder_id".equals(str2))
          {
            String str4 = paramJsonReader.nextString();
            i6 = i4;
            localObject4 = localObject3;
            i7 = n;
            i8 = j;
            localObject5 = localObject1;
            int i27 = m;
            i10 = i;
            i11 = i3;
            localObject6 = str4;
            i12 = i1;
            i13 = k;
            i14 = i2;
            bool2 = bool1;
            i15 = i27;
          }
          else if ("decoder_id".equals(str2))
          {
            String str3 = paramJsonReader.nextString();
            i6 = i4;
            localObject4 = str3;
            i7 = n;
            i8 = j;
            localObject5 = localObject1;
            int i26 = m;
            i10 = i;
            i11 = i3;
            localObject6 = localObject2;
            i12 = i1;
            i13 = k;
            i14 = i2;
            bool2 = bool1;
            i15 = i26;
          }
          else if ("encoder_input_timeout".equals(str2))
          {
            int i25 = ViEOMXHelper.access$000(paramJsonReader);
            i10 = i;
            i11 = i3;
            localObject6 = localObject2;
            i12 = i1;
            i13 = k;
            i14 = i2;
            bool2 = bool1;
            i15 = i25;
            i6 = i4;
            localObject4 = localObject3;
            i7 = n;
            i8 = j;
            localObject5 = localObject1;
          }
          else if ("encoder_output_timeout".equals(str2))
          {
            int i22 = ViEOMXHelper.access$000(paramJsonReader);
            i8 = j;
            localObject5 = localObject1;
            int i23 = i2;
            bool2 = bool1;
            i15 = m;
            i10 = i;
            i11 = i3;
            localObject6 = localObject2;
            i12 = i1;
            i13 = k;
            i14 = i23;
            int i24 = i4;
            localObject4 = localObject3;
            i7 = i22;
            i6 = i24;
          }
          else if ("decoder_input_timeout".equals(str2))
          {
            int i21 = ViEOMXHelper.access$000(paramJsonReader);
            i13 = k;
            i14 = i2;
            bool2 = bool1;
            i15 = m;
            i10 = i;
            i11 = i3;
            localObject6 = localObject2;
            i12 = i21;
            i6 = i4;
            localObject4 = localObject3;
            i7 = n;
            i8 = j;
            localObject5 = localObject1;
          }
          else if ("decoder_output_timeout".equals(str2))
          {
            int i20 = ViEOMXHelper.access$000(paramJsonReader);
            bool2 = bool1;
            i15 = m;
            i10 = i;
            i11 = i3;
            localObject6 = localObject2;
            i12 = i1;
            i13 = k;
            i14 = i20;
            i6 = i4;
            localObject4 = localObject3;
            i7 = n;
            i8 = j;
            localObject5 = localObject1;
          }
          else if ("encoder_framerate".equals(str2))
          {
            int i19 = ViEOMXHelper.access$000(paramJsonReader);
            localObject6 = localObject2;
            i12 = i1;
            i13 = k;
            i14 = i2;
            bool2 = bool1;
            i15 = m;
            i10 = i;
            i11 = i19;
            i6 = i4;
            localObject4 = localObject3;
            i7 = n;
            i8 = j;
            localObject5 = localObject1;
          }
          else if ("encoder_bitrate".equals(str2))
          {
            int i17 = ViEOMXHelper.access$000(paramJsonReader);
            i6 = i17;
            localObject4 = localObject3;
            i7 = n;
            i8 = j;
            localObject5 = localObject1;
            int i18 = m;
            i10 = i;
            i11 = i3;
            localObject6 = localObject2;
            i12 = i1;
            i13 = k;
            i14 = i2;
            bool2 = bool1;
            i15 = i18;
          }
        }
        catch (Exception localException)
        {
          ViEOMXHelper.access$100("QUIRKS-ex: exception occurred while parsing new entity, " + localException.toString());
          i6 = i4;
          localObject4 = localObject3;
          i7 = n;
          i8 = j;
          localObject5 = localObject1;
          int i9 = m;
          i10 = i;
          i11 = i3;
          localObject6 = localObject2;
          i12 = i1;
          i13 = k;
          i14 = i2;
          bool2 = bool1;
          i15 = i9;
        }
      }
      else
      {
        paramJsonReader.endObject();
        if (localObject1 != null) {
          if (k == 0) {
            break label1279;
          }
        }
        label1279:
        for (int i5 = 2141391875;; i5 = j)
        {
          ViEOMXHelper.access$100("QUIRKS-ex:  new entity: " + (String)localObject1 + " {enc:" + i + " dec:" + i5 + " eid:" + (String)localObject2 + " did:" + (String)localObject3 + "}");
          OMXQuirks localOMXQuirks = new OMXQuirks(i, i5, (String)localObject2, (String)localObject3, bool1);
          localOMXQuirks.encoderInputTimeout = m;
          localOMXQuirks.encoderOutputTimeout = n;
          localOMXQuirks.decoderInputTimeout = i1;
          localOMXQuirks.decoderOutputTimeout = i2;
          localOMXQuirks.encoderFrameRate = i3;
          localOMXQuirks.encoderBitRate = i4;
          paramMap1.put(localObject1, localOMXQuirks);
          paramMap2.remove(localObject1);
          return true;
          return false;
        }
      }
      localObject1 = localObject5;
      j = i8;
      n = i7;
      localObject3 = localObject4;
      i4 = i6;
      int i16 = i15;
      bool1 = bool2;
      i2 = i14;
      k = i13;
      i1 = i12;
      localObject2 = localObject6;
      i3 = i11;
      i = i10;
      m = i16;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     org.webrtc.videoengine.ViEOMXHelper.OMXQuirks
 * JD-Core Version:    0.7.0.1
 */
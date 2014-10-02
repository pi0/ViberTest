package org.webrtc.videoengine;

import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.os.Build;
import android.util.JsonReader;
import android.util.JsonToken;
import android.util.Log;
import com.viber.voip.ViberApplication;
import com.viber.voip.util.u;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicInteger;

public class ViEOMXHelper
{
  public static final boolean ALLOW_WHITELISTED_MODELS_ONLY = false;
  public static final String[] EXTERNAL_QUIRK_LISTS_LOCATIONS;
  public static final boolean FORCE_DETAILED_CHECKS = false;
  private static final String OPENH264_SONAME = "libopenh264-1.0.0-android19.so";
  private static final String OPENH264_SONAME_LOCATION;
  public static final boolean REJECT_BLACKLISTED_MODELS = true;
  public static final String TAG = ViEOMXHelper.class.getSimpleName();
  public static final int VP8ProfileMain = 1;
  private static AtomicInteger _h264_available;
  private static int _h264_minimal_api_level = 18;
  private static AtomicInteger _vp8_available;
  static Map<String, ViEOMXHelper.OMXQuirks> blacklistedModels;
  static Set<MediaCodecInfo> cachedCodecInfo;
  public static final Map<String, ViEOMXHelper.OMXNode> h264_codecs;
  private static final Map<String, ViEOMXHelper.OpenH264DownloadDescriptor> openh264DownloadPaths;
  public static final Set<Integer> vp8_colorspaces;
  static Map<String, ViEOMXHelper.OMXQuirks> whitelistedModels;
  
  static
  {
    _h264_available = new AtomicInteger(-1);
    _vp8_available = new AtomicInteger(-1);
    blacklistedModels = new HashMap();
    EXTERNAL_QUIRK_LISTS_LOCATIONS = new String[] { "/sdcard/viber/h264_quirks.json" };
    whitelistedModels = new HashMap();
    h264_codecs = new HashMap();
    vp8_colorspaces = new TreeSet();
    cachedCodecInfo = null;
    OPENH264_SONAME_LOCATION = "/data/data/" + ViberApplication.class.getPackage().getName() + "/lib/";
    openh264DownloadPaths = new HashMap();
    openh264DownloadPaths.put("armeabi-v7a", new ViEOMXHelper.OpenH264DownloadDescriptor("http://ciscobinary.openh264.org/download/libopenh264-1.0.0-android19.so.bz2", "3bac885bba6b97afcbac5ed383bec918"));
    openh264DownloadPaths.put("armeabi-v7a-hard", new ViEOMXHelper.OpenH264DownloadDescriptor("http://ciscobinary.openh264.org/download/libopenh264-1.0.0-android19.so.bz2", "3bac885bba6b97afcbac5ed383bec918"));
  }
  
  public ViEOMXHelper()
  {
    whitelistedModels.put("manta", new ViEOMXHelper.OMXQuirks(19));
    whitelistedModels.put("nakasi", new ViEOMXHelper.OMXQuirks(19, 19));
    whitelistedModels.put("jflte", new ViEOMXHelper.OMXQuirks(19));
    whitelistedModels.put("t03gxx", new ViEOMXHelper.OMXQuirks(19, 19, "OMX.SEC.AVC.Encoder", "OMX.SEC.AVC.Decoder"));
    whitelistedModels.put("lt26i_1257-7450", new ViEOMXHelper.OMXQuirks(21, 2141391875, "OMX.qcom.video.encoder.avc", "OMX.qcom.video.decoder.avc"));
    whitelistedModels.put("m0xx", new ViEOMXHelper.OMXQuirks(19, 19, "OMX.SEC.AVC.Encoder", "OMX.SEC.AVC.Encoder"));
    whitelistedModels.put("hammerhead", new ViEOMXHelper.OMXQuirks(21, 19, "OMX.qcom.video.encoder.avc", "OMX.qcom.video.decoder.avc"));
    loadExternalQuirkLists(EXTERNAL_QUIRK_LISTS_LOCATIONS);
  }
  
  public static final String colorFormat(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 1: 
      return "COLOR_FormatMonochrome";
    case 2: 
      return "COLOR_Format8bitRGB332";
    case 3: 
      return "COLOR_Format12bitRGB444";
    case 4: 
      return "COLOR_Format16bitARGB4444";
    case 5: 
      return "COLOR_Format16bitARGB1555";
    case 6: 
      return "COLOR_Format16bitRGB565";
    case 7: 
      return "COLOR_Format16bitBGR565";
    case 8: 
      return "COLOR_Format18bitRGB666";
    case 9: 
      return "COLOR_Format18bitARGB1665";
    case 10: 
      return "COLOR_Format19bitARGB1666";
    case 11: 
      return "COLOR_Format24bitRGB888";
    case 12: 
      return "COLOR_Format24bitBGR888";
    case 13: 
      return "COLOR_Format24bitARGB1887";
    case 14: 
      return "COLOR_Format25bitARGB1888";
    case 15: 
      return "COLOR_Format32bitBGRA8888";
    case 16: 
      return "COLOR_Format32bitARGB8888";
    case 17: 
      return "COLOR_FormatYUV411Planar";
    case 18: 
      return "COLOR_FormatYUV411PackedPlanar";
    case 19: 
      return "COLOR_FormatYUV420Planar";
    case 20: 
      return "COLOR_FormatYUV420PackedPlanar";
    case 21: 
      return "COLOR_FormatYUV420SemiPlanar";
    case 22: 
      return "COLOR_FormatYUV422Planar";
    case 23: 
      return "COLOR_FormatYUV422PackedPlanar";
    case 24: 
      return "COLOR_FormatYUV422SemiPlanar";
    case 25: 
      return "COLOR_FormatYCbYCr";
    case 26: 
      return "COLOR_FormatYCrYCb";
    case 27: 
      return "COLOR_FormatCbYCrY";
    case 28: 
      return "COLOR_FormatCrYCbY";
    case 29: 
      return "COLOR_FormatYUV444Interleaved";
    case 30: 
      return "COLOR_FormatRawBayer8bit";
    case 31: 
      return "COLOR_FormatRawBayer10bit";
    case 32: 
      return "COLOR_FormatRawBayer8bitcompressed";
    case 33: 
      return "COLOR_FormatL2";
    case 34: 
      return "COLOR_FormatL4";
    case 35: 
      return "COLOR_FormatL8";
    case 36: 
      return "COLOR_FormatL16";
    case 37: 
      return "COLOR_FormatL24";
    case 38: 
      return "COLOR_FormatL32";
    case 39: 
      return "COLOR_FormatYUV420PackedSemiPlanar";
    case 40: 
      return "COLOR_FormatYUV422PackedSemiPlanar";
    case 41: 
      return "COLOR_Format18BitBGR666";
    case 42: 
      return "COLOR_Format24BitARGB6666";
    case 43: 
      return "COLOR_Format24BitABGR6666";
    case 2130706688: 
      return "COLOR_TI_FormatYUV420PackedSemiPlanar";
    case 2130708361: 
      return "COLOR_FormatSurface";
    }
    return "COLOR_QCOM_FormatYUV420SemiPlanar";
  }
  
  public static final String getAVCLevel(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 1: 
      return "AVCLevel1";
    case 2: 
      return "AVCLevel1b";
    case 4: 
      return "AVCLevel11";
    case 8: 
      return "AVCLevel12";
    case 16: 
      return "AVCLevel13";
    case 32: 
      return "AVCLevel2";
    case 64: 
      return "AVCLevel21";
    case 128: 
      return "AVCLevel22";
    case 256: 
      return "AVCLevel3";
    case 512: 
      return "AVCLeve31";
    case 1024: 
      return "AVCLeve32";
    case 2048: 
      return "AVCLevel4";
    case 4096: 
      return "AVCLevel41";
    case 8192: 
      return "AVCLevel42";
    case 16384: 
      return "AVCLevel5";
    }
    return "AVCLevel51";
  }
  
  public static final String getAVCProfile(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 1: 
      return "AVCProfileBaseline";
    case 2: 
      return "AVCProfileMain";
    case 4: 
      return "AVCProfileExtended";
    case 8: 
      return "AVCProfileHigh";
    case 16: 
      return "AVCProfileHigh10";
    case 32: 
      return "AVCProfileHigh422";
    }
    return "AVCProfileHigh444";
  }
  
  public static String[] getDecoderNames(String paramString)
  {
    List localList = u.a(Arrays.asList(getDecoders(paramString)), new ViEOMXHelper.2());
    return (String[])localList.toArray(new String[localList.size()]);
  }
  
  public static ViEOMXHelper.OMXNode[] getDecoders(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = h264_codecs.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if ((!((ViEOMXHelper.OMXNode)localEntry.getValue()).isEncoder) && (paramString.equals(((ViEOMXHelper.OMXNode)localEntry.getValue()).mimetype))) {
        localArrayList.add(localEntry.getValue());
      }
    }
    return (ViEOMXHelper.OMXNode[])localArrayList.toArray(new ViEOMXHelper.OMXNode[localArrayList.size()]);
  }
  
  public static String[] getEncoderNames(String paramString)
  {
    List localList = u.a(Arrays.asList(getEncoders(paramString)), new ViEOMXHelper.1());
    return (String[])localList.toArray(new String[localList.size()]);
  }
  
  public static ViEOMXHelper.OMXNode[] getEncoders(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = h264_codecs.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if ((((ViEOMXHelper.OMXNode)localEntry.getValue()).isEncoder) && (paramString.equals(((ViEOMXHelper.OMXNode)localEntry.getValue()).mimetype))) {
        localArrayList.add(localEntry.getValue());
      }
    }
    return (ViEOMXHelper.OMXNode[])localArrayList.toArray(new ViEOMXHelper.OMXNode[localArrayList.size()]);
  }
  
  public static ViEOMXHelper.OMXNode getNode(String paramString)
  {
    return (ViEOMXHelper.OMXNode)h264_codecs.get(paramString);
  }
  
  public static ViEOMXHelper.OpenH264DownloadDescriptor getOpenH264DownloadUrl()
  {
    return (ViEOMXHelper.OpenH264DownloadDescriptor)openh264DownloadPaths.get(Build.CPU_ABI);
  }
  
  @ViEOMXHelper.Native
  private static final String getOpenH264Path()
  {
    return OPENH264_SONAME_LOCATION + "libopenh264-1.0.0-android19.so";
  }
  
  public static final ViEOMXHelper.OMXQuirks getQuirks()
  {
    return (ViEOMXHelper.OMXQuirks)whitelistedModels.get(Build.PRODUCT.toLowerCase());
  }
  
  public static final String getVP8Level(int paramInt)
  {
    switch (paramInt)
    {
    case 3: 
    case 5: 
    case 6: 
    case 7: 
    default: 
      return null;
    case 1: 
      return "VP8Level_Version0";
    case 2: 
      return "VP8Level_Version1";
    case 4: 
      return "VP8Level_Version2";
    }
    return "VP8Level_Version3";
  }
  
  public static final String getVP8Profile(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    }
    return "VP8ProfileMain";
  }
  
  public static int[] h264Colorspaces(String paramString)
  {
    ViEOMXHelper.OMXNode localOMXNode = (ViEOMXHelper.OMXNode)h264_codecs.get(paramString);
    if (localOMXNode == null) {
      return null;
    }
    return localOMXNode.supportedColorspaces();
  }
  
  public static final int h264MinimalApiLevel()
  {
    return _h264_minimal_api_level;
  }
  
  @TargetApi(18)
  private static boolean isCodecPresent(String paramString, Map<String, ViEOMXHelper.OMXNode> paramMap)
  {
    return isCodecPresent(paramString, paramMap, ViEOMXHelper.LookupMode.ENCODER_AND_DECODER);
  }
  
  /* Error */
  @TargetApi(18)
  private static boolean isCodecPresent(String paramString, Map<String, ViEOMXHelper.OMXNode> paramMap, ViEOMXHelper.LookupMode paramLookupMode)
  {
    // Byte code:
    //   0: getstatic 82	org/webrtc/videoengine/ViEOMXHelper:cachedCodecInfo	Ljava/util/Set;
    //   3: ifnonnull +54 -> 57
    //   6: ldc 2
    //   8: monitorenter
    //   9: new 466	java/util/HashSet
    //   12: dup
    //   13: invokespecial 467	java/util/HashSet:<init>	()V
    //   16: putstatic 82	org/webrtc/videoengine/ViEOMXHelper:cachedCodecInfo	Ljava/util/Set;
    //   19: invokestatic 472	android/media/MediaCodecList:getCodecCount	()I
    //   22: istore 53
    //   24: iconst_0
    //   25: istore 54
    //   27: iload 54
    //   29: iload 53
    //   31: if_icmpge +23 -> 54
    //   34: getstatic 82	org/webrtc/videoengine/ViEOMXHelper:cachedCodecInfo	Ljava/util/Set;
    //   37: iload 54
    //   39: invokestatic 476	android/media/MediaCodecList:getCodecInfoAt	(I)Landroid/media/MediaCodecInfo;
    //   42: invokeinterface 477 2 0
    //   47: pop
    //   48: iinc 54 1
    //   51: goto -24 -> 27
    //   54: ldc 2
    //   56: monitorexit
    //   57: getstatic 82	org/webrtc/videoengine/ViEOMXHelper:cachedCodecInfo	Ljava/util/Set;
    //   60: invokeinterface 364 1 0
    //   65: astore_3
    //   66: iconst_0
    //   67: istore 4
    //   69: iconst_0
    //   70: istore 5
    //   72: aload_3
    //   73: invokeinterface 370 1 0
    //   78: ifeq +948 -> 1026
    //   81: aload_3
    //   82: invokeinterface 374 1 0
    //   87: checkcast 479	android/media/MediaCodecInfo
    //   90: astore 6
    //   92: aload 6
    //   94: invokevirtual 483	android/media/MediaCodecInfo:getSupportedTypes	()[Ljava/lang/String;
    //   97: astore 7
    //   99: aload 7
    //   101: arraylength
    //   102: istore 8
    //   104: iconst_0
    //   105: istore 9
    //   107: ldc_w 485
    //   110: astore 10
    //   112: iload 9
    //   114: iload 8
    //   116: if_icmpge +732 -> 848
    //   119: aload 7
    //   121: iload 9
    //   123: aaload
    //   124: astore 16
    //   126: aload_0
    //   127: aload 16
    //   129: invokevirtual 489	java/lang/String:compareToIgnoreCase	(Ljava/lang/String;)I
    //   132: ifeq +19 -> 151
    //   135: aload_0
    //   136: aload 6
    //   138: invokevirtual 490	android/media/MediaCodecInfo:getName	()Ljava/lang/String;
    //   141: invokevirtual 391	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   144: istore 51
    //   146: iload 51
    //   148: ifeq +274 -> 422
    //   151: iconst_1
    //   152: istore 23
    //   154: iload 4
    //   156: iload 23
    //   158: ior
    //   159: istore 24
    //   161: getstatic 459	org/webrtc/videoengine/ViEOMXHelper$LookupMode:ENCODER_AND_DECODER	Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;
    //   164: aload_2
    //   165: if_acmpeq +37 -> 202
    //   168: aload 6
    //   170: invokevirtual 492	android/media/MediaCodecInfo:isEncoder	()Z
    //   173: ifeq +10 -> 183
    //   176: getstatic 495	org/webrtc/videoengine/ViEOMXHelper$LookupMode:ENCODER	Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;
    //   179: aload_2
    //   180: if_acmpeq +22 -> 202
    //   183: aload 6
    //   185: invokevirtual 492	android/media/MediaCodecInfo:isEncoder	()Z
    //   188: ifne +240 -> 428
    //   191: getstatic 498	org/webrtc/videoengine/ViEOMXHelper$LookupMode:DECODER	Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;
    //   194: astore 50
    //   196: aload 50
    //   198: aload_2
    //   199: if_acmpne +229 -> 428
    //   202: iconst_1
    //   203: istore 26
    //   205: iload 26
    //   207: iload 23
    //   209: iand
    //   210: istore 20
    //   212: iload 20
    //   214: ifeq +862 -> 1076
    //   217: aload 6
    //   219: aload 16
    //   221: invokevirtual 502	android/media/MediaCodecInfo:getCapabilitiesForType	(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;
    //   224: astore 28
    //   226: new 84	java/lang/StringBuilder
    //   229: dup
    //   230: invokespecial 85	java/lang/StringBuilder:<init>	()V
    //   233: aload 10
    //   235: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   238: ldc_w 504
    //   241: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   244: aload 16
    //   246: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   249: ldc_w 506
    //   252: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   255: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   258: astore 10
    //   260: aload 28
    //   262: getfield 512	android/media/MediaCodecInfo$CodecCapabilities:colorFormats	[I
    //   265: astore 29
    //   267: aload 29
    //   269: arraylength
    //   270: istore 30
    //   272: iconst_0
    //   273: istore 31
    //   275: iload 31
    //   277: iload 30
    //   279: if_icmpge +155 -> 434
    //   282: aload 29
    //   284: iload 31
    //   286: iaload
    //   287: istore 32
    //   289: iload 32
    //   291: invokestatic 514	org/webrtc/videoengine/ViEOMXHelper:colorFormat	(I)Ljava/lang/String;
    //   294: astore 33
    //   296: aload 33
    //   298: ifnonnull +8 -> 306
    //   301: ldc_w 516
    //   304: astore 33
    //   306: new 84	java/lang/StringBuilder
    //   309: dup
    //   310: invokespecial 85	java/lang/StringBuilder:<init>	()V
    //   313: aload 10
    //   315: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   318: iload 32
    //   320: invokevirtual 519	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   323: ldc_w 521
    //   326: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   329: aload 33
    //   331: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   334: ldc_w 523
    //   337: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   340: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   343: astore 10
    //   345: aload_1
    //   346: aload 6
    //   348: invokevirtual 490	android/media/MediaCodecInfo:getName	()Ljava/lang/String;
    //   351: invokeinterface 413 2 0
    //   356: checkcast 381	org/webrtc/videoengine/ViEOMXHelper$OMXNode
    //   359: astore 34
    //   361: aload 34
    //   363: ifnonnull +24 -> 387
    //   366: new 381	org/webrtc/videoengine/ViEOMXHelper$OMXNode
    //   369: dup
    //   370: aload 16
    //   372: aload 6
    //   374: invokevirtual 490	android/media/MediaCodecInfo:getName	()Ljava/lang/String;
    //   377: aload 6
    //   379: invokevirtual 492	android/media/MediaCodecInfo:isEncoder	()Z
    //   382: invokespecial 526	org/webrtc/videoengine/ViEOMXHelper$OMXNode:<init>	(Ljava/lang/String;Ljava/lang/String;Z)V
    //   385: astore 34
    //   387: aload 34
    //   389: iload 32
    //   391: invokevirtual 529	org/webrtc/videoengine/ViEOMXHelper$OMXNode:addSupportedColorspace	(I)V
    //   394: aload_1
    //   395: aload 6
    //   397: invokevirtual 490	android/media/MediaCodecInfo:getName	()Ljava/lang/String;
    //   400: aload 34
    //   402: invokeinterface 128 3 0
    //   407: pop
    //   408: iinc 31 1
    //   411: goto -136 -> 275
    //   414: astore 52
    //   416: ldc 2
    //   418: monitorexit
    //   419: aload 52
    //   421: athrow
    //   422: iconst_0
    //   423: istore 23
    //   425: goto -271 -> 154
    //   428: iconst_0
    //   429: istore 26
    //   431: goto -226 -> 205
    //   434: new 84	java/lang/StringBuilder
    //   437: dup
    //   438: invokespecial 85	java/lang/StringBuilder:<init>	()V
    //   441: aload 10
    //   443: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   446: ldc_w 531
    //   449: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   452: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   455: astore 36
    //   457: aload 36
    //   459: astore 21
    //   461: ldc_w 533
    //   464: aload 16
    //   466: invokevirtual 537	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   469: ifeq +175 -> 644
    //   472: new 84	java/lang/StringBuilder
    //   475: dup
    //   476: invokespecial 85	java/lang/StringBuilder:<init>	()V
    //   479: aload 21
    //   481: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   484: ldc_w 539
    //   487: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   490: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   493: astore 44
    //   495: aload 44
    //   497: astore 10
    //   499: aload 28
    //   501: getfield 543	android/media/MediaCodecInfo$CodecCapabilities:profileLevels	[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    //   504: astore 45
    //   506: aload 45
    //   508: arraylength
    //   509: istore 46
    //   511: iconst_0
    //   512: istore 47
    //   514: iload 47
    //   516: iload 46
    //   518: if_icmpge +73 -> 591
    //   521: aload 45
    //   523: iload 47
    //   525: aaload
    //   526: astore 48
    //   528: new 84	java/lang/StringBuilder
    //   531: dup
    //   532: invokespecial 85	java/lang/StringBuilder:<init>	()V
    //   535: aload 10
    //   537: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   540: ldc_w 545
    //   543: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   546: aload 48
    //   548: getfield 550	android/media/MediaCodecInfo$CodecProfileLevel:profile	I
    //   551: invokestatic 552	org/webrtc/videoengine/ViEOMXHelper:getAVCProfile	(I)Ljava/lang/String;
    //   554: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   557: ldc_w 554
    //   560: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   563: aload 48
    //   565: getfield 557	android/media/MediaCodecInfo$CodecProfileLevel:level	I
    //   568: invokestatic 559	org/webrtc/videoengine/ViEOMXHelper:getAVCLevel	(I)Ljava/lang/String;
    //   571: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   574: ldc_w 561
    //   577: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   580: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   583: astore 10
    //   585: iinc 47 1
    //   588: goto -74 -> 514
    //   591: new 84	java/lang/StringBuilder
    //   594: dup
    //   595: invokespecial 85	java/lang/StringBuilder:<init>	()V
    //   598: aload 10
    //   600: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   603: ldc_w 531
    //   606: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   609: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   612: astore 49
    //   614: aload 49
    //   616: astore 21
    //   618: iload 24
    //   620: istore 19
    //   622: iinc 9 1
    //   625: aload 21
    //   627: astore 22
    //   629: iload 20
    //   631: istore 5
    //   633: iload 19
    //   635: istore 4
    //   637: aload 22
    //   639: astore 10
    //   641: goto -529 -> 112
    //   644: ldc_w 533
    //   647: aload 16
    //   649: invokevirtual 537	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   652: ifeq -34 -> 618
    //   655: new 84	java/lang/StringBuilder
    //   658: dup
    //   659: invokespecial 85	java/lang/StringBuilder:<init>	()V
    //   662: aload 21
    //   664: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   667: ldc_w 563
    //   670: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   673: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   676: astore 38
    //   678: aload 38
    //   680: astore 10
    //   682: aload 28
    //   684: getfield 543	android/media/MediaCodecInfo$CodecCapabilities:profileLevels	[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    //   687: astore 39
    //   689: aload 39
    //   691: arraylength
    //   692: istore 40
    //   694: iconst_0
    //   695: istore 41
    //   697: iload 41
    //   699: iload 40
    //   701: if_icmpge +73 -> 774
    //   704: aload 39
    //   706: iload 41
    //   708: aaload
    //   709: astore 42
    //   711: new 84	java/lang/StringBuilder
    //   714: dup
    //   715: invokespecial 85	java/lang/StringBuilder:<init>	()V
    //   718: aload 10
    //   720: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   723: ldc_w 545
    //   726: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   729: aload 42
    //   731: getfield 550	android/media/MediaCodecInfo$CodecProfileLevel:profile	I
    //   734: invokestatic 565	org/webrtc/videoengine/ViEOMXHelper:getVP8Profile	(I)Ljava/lang/String;
    //   737: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   740: ldc_w 554
    //   743: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   746: aload 42
    //   748: getfield 557	android/media/MediaCodecInfo$CodecProfileLevel:level	I
    //   751: invokestatic 567	org/webrtc/videoengine/ViEOMXHelper:getVP8Level	(I)Ljava/lang/String;
    //   754: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   757: ldc_w 561
    //   760: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   763: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   766: astore 10
    //   768: iinc 41 1
    //   771: goto -74 -> 697
    //   774: new 84	java/lang/StringBuilder
    //   777: dup
    //   778: invokespecial 85	java/lang/StringBuilder:<init>	()V
    //   781: aload 10
    //   783: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   786: ldc_w 531
    //   789: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   792: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   795: astore 43
    //   797: aload 43
    //   799: astore 21
    //   801: goto -183 -> 618
    //   804: astore 27
    //   806: aload 10
    //   808: astore 21
    //   810: iload 24
    //   812: istore 19
    //   814: iconst_1
    //   815: new 84	java/lang/StringBuilder
    //   818: dup
    //   819: invokespecial 85	java/lang/StringBuilder:<init>	()V
    //   822: ldc_w 569
    //   825: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   828: aload 16
    //   830: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   833: ldc_w 571
    //   836: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   839: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   842: invokestatic 574	org/webrtc/videoengine/ViEOMXHelper:log	(ZLjava/lang/String;)V
    //   845: goto -223 -> 622
    //   848: new 84	java/lang/StringBuilder
    //   851: dup
    //   852: invokespecial 85	java/lang/StringBuilder:<init>	()V
    //   855: aload 10
    //   857: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   860: ldc_w 576
    //   863: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   866: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   869: astore 11
    //   871: new 84	java/lang/StringBuilder
    //   874: dup
    //   875: invokespecial 85	java/lang/StringBuilder:<init>	()V
    //   878: ldc_w 578
    //   881: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   884: astore 12
    //   886: iload 5
    //   888: ifeq +122 -> 1010
    //   891: ldc_w 580
    //   894: astore 13
    //   896: aload 12
    //   898: aload 13
    //   900: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   903: ldc_w 582
    //   906: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   909: astore 14
    //   911: aload 6
    //   913: invokevirtual 492	android/media/MediaCodecInfo:isEncoder	()Z
    //   916: ifeq +102 -> 1018
    //   919: ldc_w 584
    //   922: astore 15
    //   924: iconst_1
    //   925: aload 14
    //   927: aload 15
    //   929: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   932: ldc_w 506
    //   935: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   938: iconst_0
    //   939: invokevirtual 519	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   942: ldc_w 531
    //   945: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   948: aload 6
    //   950: invokevirtual 490	android/media/MediaCodecInfo:getName	()Ljava/lang/String;
    //   953: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   956: ldc_w 586
    //   959: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   962: aload 7
    //   964: invokestatic 589	java/util/Arrays:toString	([Ljava/lang/Object;)Ljava/lang/String;
    //   967: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   970: ldc_w 591
    //   973: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   976: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   979: invokestatic 574	org/webrtc/videoengine/ViEOMXHelper:log	(ZLjava/lang/String;)V
    //   982: iconst_1
    //   983: new 84	java/lang/StringBuilder
    //   986: dup
    //   987: invokespecial 85	java/lang/StringBuilder:<init>	()V
    //   990: ldc_w 593
    //   993: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   996: aload 11
    //   998: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1001: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1004: invokestatic 574	org/webrtc/videoengine/ViEOMXHelper:log	(ZLjava/lang/String;)V
    //   1007: goto -935 -> 72
    //   1010: ldc_w 595
    //   1013: astore 13
    //   1015: goto -119 -> 896
    //   1018: ldc_w 597
    //   1021: astore 15
    //   1023: goto -99 -> 924
    //   1026: iload 4
    //   1028: ireturn
    //   1029: astore 37
    //   1031: iload 24
    //   1033: istore 19
    //   1035: goto -221 -> 814
    //   1038: astore 17
    //   1040: aload 10
    //   1042: astore 18
    //   1044: iload 4
    //   1046: istore 19
    //   1048: iload 5
    //   1050: istore 20
    //   1052: aload 18
    //   1054: astore 21
    //   1056: goto -242 -> 814
    //   1059: astore 25
    //   1061: iload 23
    //   1063: istore 20
    //   1065: aload 10
    //   1067: astore 21
    //   1069: iload 24
    //   1071: istore 19
    //   1073: goto -259 -> 814
    //   1076: aload 10
    //   1078: astore 21
    //   1080: goto -462 -> 618
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1083	0	paramString	String
    //   0	1083	1	paramMap	Map<String, ViEOMXHelper.OMXNode>
    //   0	1083	2	paramLookupMode	ViEOMXHelper.LookupMode
    //   65	17	3	localIterator	Iterator
    //   67	978	4	bool1	boolean
    //   70	979	5	i	int
    //   90	859	6	localMediaCodecInfo	MediaCodecInfo
    //   97	866	7	arrayOfString	String[]
    //   102	15	8	j	int
    //   105	518	9	k	int
    //   110	967	10	localObject1	Object
    //   869	128	11	str1	String
    //   884	13	12	localStringBuilder1	java.lang.StringBuilder
    //   894	120	13	str2	String
    //   909	17	14	localStringBuilder2	java.lang.StringBuilder
    //   922	100	15	str3	String
    //   124	705	16	str4	String
    //   1038	1	17	localException1	Exception
    //   1042	11	18	localObject2	Object
    //   620	452	19	bool2	boolean
    //   210	854	20	m	int
    //   459	620	21	localObject3	Object
    //   627	11	22	localObject4	Object
    //   152	910	23	bool3	boolean
    //   159	911	24	bool4	boolean
    //   1059	1	25	localException2	Exception
    //   203	227	26	bool5	boolean
    //   804	1	27	localException3	Exception
    //   224	459	28	localCodecCapabilities	android.media.MediaCodecInfo.CodecCapabilities
    //   265	18	29	arrayOfInt	int[]
    //   270	10	30	n	int
    //   273	136	31	i1	int
    //   287	103	32	i2	int
    //   294	36	33	str5	String
    //   359	42	34	localOMXNode	ViEOMXHelper.OMXNode
    //   455	3	36	str6	String
    //   1029	1	37	localException4	Exception
    //   676	3	38	str7	String
    //   687	18	39	arrayOfCodecProfileLevel1	android.media.MediaCodecInfo.CodecProfileLevel[]
    //   692	10	40	i3	int
    //   695	74	41	i4	int
    //   709	38	42	localCodecProfileLevel1	android.media.MediaCodecInfo.CodecProfileLevel
    //   795	3	43	str8	String
    //   493	3	44	str9	String
    //   504	18	45	arrayOfCodecProfileLevel2	android.media.MediaCodecInfo.CodecProfileLevel[]
    //   509	10	46	i5	int
    //   512	74	47	i6	int
    //   526	38	48	localCodecProfileLevel2	android.media.MediaCodecInfo.CodecProfileLevel
    //   612	3	49	str10	String
    //   194	3	50	localLookupMode	ViEOMXHelper.LookupMode
    //   144	3	51	bool6	boolean
    //   414	6	52	localObject5	Object
    //   22	10	53	i7	int
    //   25	24	54	i8	int
    // Exception table:
    //   from	to	target	type
    //   9	24	414	finally
    //   34	48	414	finally
    //   54	57	414	finally
    //   416	419	414	finally
    //   217	272	804	java/lang/Exception
    //   282	296	804	java/lang/Exception
    //   306	361	804	java/lang/Exception
    //   366	387	804	java/lang/Exception
    //   387	408	804	java/lang/Exception
    //   434	457	804	java/lang/Exception
    //   499	511	804	java/lang/Exception
    //   521	585	804	java/lang/Exception
    //   591	614	804	java/lang/Exception
    //   682	694	804	java/lang/Exception
    //   704	768	804	java/lang/Exception
    //   774	797	804	java/lang/Exception
    //   461	495	1029	java/lang/Exception
    //   644	678	1029	java/lang/Exception
    //   126	146	1038	java/lang/Exception
    //   161	183	1059	java/lang/Exception
    //   183	196	1059	java/lang/Exception
  }
  
  /* Error */
  public static boolean isH264Available()
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_0
    //   2: iconst_m1
    //   3: getstatic 57	org/webrtc/videoengine/ViEOMXHelper:_h264_available	Ljava/util/concurrent/atomic/AtomicInteger;
    //   6: invokevirtual 600	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   9: if_icmpeq +26 -> 35
    //   12: getstatic 57	org/webrtc/videoengine/ViEOMXHelper:_h264_available	Ljava/util/concurrent/atomic/AtomicInteger;
    //   15: invokevirtual 600	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   18: ifeq +11 -> 29
    //   21: iload_0
    //   22: istore 33
    //   24: iload 33
    //   26: istore_0
    //   27: iload_0
    //   28: ireturn
    //   29: iconst_0
    //   30: istore 33
    //   32: goto -8 -> 24
    //   35: getstatic 427	android/os/Build:PRODUCT	Ljava/lang/String;
    //   38: invokevirtual 430	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   41: astore_1
    //   42: getstatic 65	org/webrtc/videoengine/ViEOMXHelper:blacklistedModels	Ljava/util/Map;
    //   45: aload_1
    //   46: invokeinterface 603 2 0
    //   51: istore 9
    //   53: iconst_0
    //   54: iload 9
    //   56: ior
    //   57: istore 4
    //   59: iload 4
    //   61: ifeq +79 -> 140
    //   64: new 84	java/lang/StringBuilder
    //   67: dup
    //   68: invokespecial 85	java/lang/StringBuilder:<init>	()V
    //   71: ldc_w 521
    //   74: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   77: aload_1
    //   78: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   81: ldc_w 605
    //   84: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   87: astore 30
    //   89: iload 4
    //   91: ifeq +41 -> 132
    //   94: ldc_w 607
    //   97: astore 31
    //   99: aload 30
    //   101: aload 31
    //   103: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   106: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   109: invokestatic 177	org/webrtc/videoengine/ViEOMXHelper:log	(Ljava/lang/String;)V
    //   112: getstatic 57	org/webrtc/videoengine/ViEOMXHelper:_h264_available	Ljava/util/concurrent/atomic/AtomicInteger;
    //   115: astore 32
    //   117: iload 4
    //   119: ifeq +5 -> 124
    //   122: iconst_0
    //   123: istore_0
    //   124: aload 32
    //   126: iload_0
    //   127: invokevirtual 610	java/util/concurrent/atomic/AtomicInteger:set	(I)V
    //   130: iconst_0
    //   131: ireturn
    //   132: ldc_w 612
    //   135: astore 31
    //   137: goto -38 -> 99
    //   140: getstatic 73	org/webrtc/videoengine/ViEOMXHelper:whitelistedModels	Ljava/util/Map;
    //   143: aload_1
    //   144: invokeinterface 603 2 0
    //   149: ifeq +437 -> 586
    //   152: getstatic 73	org/webrtc/videoengine/ViEOMXHelper:whitelistedModels	Ljava/util/Map;
    //   155: aload_1
    //   156: invokeinterface 413 2 0
    //   161: checkcast 135	org/webrtc/videoengine/ViEOMXHelper$OMXQuirks
    //   164: astore 17
    //   166: getstatic 75	org/webrtc/videoengine/ViEOMXHelper:h264_codecs	Ljava/util/Map;
    //   169: aload 17
    //   171: getfield 615	org/webrtc/videoengine/ViEOMXHelper$OMXQuirks:forcedEncoderType	Ljava/lang/String;
    //   174: invokeinterface 413 2 0
    //   179: checkcast 381	org/webrtc/videoengine/ViEOMXHelper$OMXNode
    //   182: astore 18
    //   184: aload 18
    //   186: ifnonnull +21 -> 207
    //   189: getstatic 75	org/webrtc/videoengine/ViEOMXHelper:h264_codecs	Ljava/util/Map;
    //   192: aload 17
    //   194: getfield 618	org/webrtc/videoengine/ViEOMXHelper$OMXQuirks:forcedDecoderType	Ljava/lang/String;
    //   197: invokeinterface 413 2 0
    //   202: checkcast 381	org/webrtc/videoengine/ViEOMXHelper$OMXNode
    //   205: astore 18
    //   207: aload 18
    //   209: ifnull +79 -> 288
    //   212: aload 18
    //   214: getfield 384	org/webrtc/videoengine/ViEOMXHelper$OMXNode:isEncoder	Z
    //   217: ifeq +61 -> 278
    //   220: aload 17
    //   222: getfield 620	org/webrtc/videoengine/ViEOMXHelper$OMXQuirks:encoder	I
    //   225: istore 19
    //   227: aload 18
    //   229: iload 19
    //   231: invokevirtual 529	org/webrtc/videoengine/ViEOMXHelper$OMXNode:addSupportedColorspace	(I)V
    //   234: new 84	java/lang/StringBuilder
    //   237: dup
    //   238: invokespecial 85	java/lang/StringBuilder:<init>	()V
    //   241: ldc_w 521
    //   244: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   247: aload_1
    //   248: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   251: ldc_w 605
    //   254: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   257: ldc_w 612
    //   260: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   263: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   266: invokestatic 177	org/webrtc/videoengine/ViEOMXHelper:log	(Ljava/lang/String;)V
    //   269: getstatic 57	org/webrtc/videoengine/ViEOMXHelper:_h264_available	Ljava/util/concurrent/atomic/AtomicInteger;
    //   272: iload_0
    //   273: invokevirtual 610	java/util/concurrent/atomic/AtomicInteger:set	(I)V
    //   276: iload_0
    //   277: ireturn
    //   278: aload 17
    //   280: getfield 622	org/webrtc/videoengine/ViEOMXHelper$OMXQuirks:decoder	I
    //   283: istore 19
    //   285: goto -58 -> 227
    //   288: aload 17
    //   290: getfield 615	org/webrtc/videoengine/ViEOMXHelper$OMXQuirks:forcedEncoderType	Ljava/lang/String;
    //   293: ifnull +233 -> 526
    //   296: getstatic 75	org/webrtc/videoengine/ViEOMXHelper:h264_codecs	Ljava/util/Map;
    //   299: astore 26
    //   301: aload 17
    //   303: getfield 615	org/webrtc/videoengine/ViEOMXHelper$OMXQuirks:forcedEncoderType	Ljava/lang/String;
    //   306: astore 27
    //   308: new 381	org/webrtc/videoengine/ViEOMXHelper$OMXNode
    //   311: dup
    //   312: ldc_w 533
    //   315: aload 17
    //   317: getfield 615	org/webrtc/videoengine/ViEOMXHelper$OMXQuirks:forcedEncoderType	Ljava/lang/String;
    //   320: iconst_1
    //   321: invokespecial 526	org/webrtc/videoengine/ViEOMXHelper$OMXNode:<init>	(Ljava/lang/String;Ljava/lang/String;Z)V
    //   324: astore 28
    //   326: aload 26
    //   328: aload 27
    //   330: aload 28
    //   332: invokeinterface 128 3 0
    //   337: pop
    //   338: iconst_m1
    //   339: aload 17
    //   341: getfield 620	org/webrtc/videoengine/ViEOMXHelper$OMXQuirks:encoder	I
    //   344: if_icmpeq +160 -> 504
    //   347: aload 28
    //   349: aload 17
    //   351: getfield 620	org/webrtc/videoengine/ViEOMXHelper$OMXQuirks:encoder	I
    //   354: invokevirtual 529	org/webrtc/videoengine/ViEOMXHelper$OMXNode:addSupportedColorspace	(I)V
    //   357: aload 17
    //   359: getfield 618	org/webrtc/videoengine/ViEOMXHelper$OMXQuirks:forcedDecoderType	Ljava/lang/String;
    //   362: ifnull +205 -> 567
    //   365: getstatic 75	org/webrtc/videoengine/ViEOMXHelper:h264_codecs	Ljava/util/Map;
    //   368: astore 21
    //   370: aload 17
    //   372: getfield 618	org/webrtc/videoengine/ViEOMXHelper$OMXQuirks:forcedDecoderType	Ljava/lang/String;
    //   375: astore 22
    //   377: new 381	org/webrtc/videoengine/ViEOMXHelper$OMXNode
    //   380: dup
    //   381: ldc_w 533
    //   384: aload 17
    //   386: getfield 618	org/webrtc/videoengine/ViEOMXHelper$OMXQuirks:forcedDecoderType	Ljava/lang/String;
    //   389: iconst_0
    //   390: invokespecial 526	org/webrtc/videoengine/ViEOMXHelper$OMXNode:<init>	(Ljava/lang/String;Ljava/lang/String;Z)V
    //   393: astore 23
    //   395: aload 21
    //   397: aload 22
    //   399: aload 23
    //   401: invokeinterface 128 3 0
    //   406: pop
    //   407: iconst_m1
    //   408: aload 17
    //   410: getfield 622	org/webrtc/videoengine/ViEOMXHelper$OMXQuirks:decoder	I
    //   413: if_icmpeq +133 -> 546
    //   416: aload 23
    //   418: aload 17
    //   420: getfield 622	org/webrtc/videoengine/ViEOMXHelper$OMXQuirks:decoder	I
    //   423: invokevirtual 529	org/webrtc/videoengine/ViEOMXHelper$OMXNode:addSupportedColorspace	(I)V
    //   426: goto -192 -> 234
    //   429: astore 10
    //   431: aload 10
    //   433: astore_3
    //   434: new 84	java/lang/StringBuilder
    //   437: dup
    //   438: invokespecial 85	java/lang/StringBuilder:<init>	()V
    //   441: ldc_w 521
    //   444: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   447: aload_1
    //   448: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   451: ldc_w 605
    //   454: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   457: astore 5
    //   459: iload 4
    //   461: ifeq +237 -> 698
    //   464: ldc_w 607
    //   467: astore 6
    //   469: aload 5
    //   471: aload 6
    //   473: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   476: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   479: invokestatic 177	org/webrtc/videoengine/ViEOMXHelper:log	(Ljava/lang/String;)V
    //   482: getstatic 57	org/webrtc/videoengine/ViEOMXHelper:_h264_available	Ljava/util/concurrent/atomic/AtomicInteger;
    //   485: astore 7
    //   487: iconst_0
    //   488: istore 8
    //   490: iload 4
    //   492: ifeq +214 -> 706
    //   495: aload 7
    //   497: iload 8
    //   499: invokevirtual 610	java/util/concurrent/atomic/AtomicInteger:set	(I)V
    //   502: aload_3
    //   503: athrow
    //   504: iload 4
    //   506: aload 17
    //   508: getfield 615	org/webrtc/videoengine/ViEOMXHelper$OMXQuirks:forcedEncoderType	Ljava/lang/String;
    //   511: getstatic 75	org/webrtc/videoengine/ViEOMXHelper:h264_codecs	Ljava/util/Map;
    //   514: getstatic 495	org/webrtc/videoengine/ViEOMXHelper$LookupMode:ENCODER	Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;
    //   517: invokestatic 462	org/webrtc/videoengine/ViEOMXHelper:isCodecPresent	(Ljava/lang/String;Ljava/util/Map;Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;)Z
    //   520: iand
    //   521: istore 4
    //   523: goto -166 -> 357
    //   526: iload 4
    //   528: ldc_w 533
    //   531: getstatic 75	org/webrtc/videoengine/ViEOMXHelper:h264_codecs	Ljava/util/Map;
    //   534: getstatic 495	org/webrtc/videoengine/ViEOMXHelper$LookupMode:ENCODER	Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;
    //   537: invokestatic 462	org/webrtc/videoengine/ViEOMXHelper:isCodecPresent	(Ljava/lang/String;Ljava/util/Map;Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;)Z
    //   540: iand
    //   541: istore 4
    //   543: goto -186 -> 357
    //   546: iload 4
    //   548: aload 17
    //   550: getfield 618	org/webrtc/videoengine/ViEOMXHelper$OMXQuirks:forcedDecoderType	Ljava/lang/String;
    //   553: getstatic 75	org/webrtc/videoengine/ViEOMXHelper:h264_codecs	Ljava/util/Map;
    //   556: getstatic 498	org/webrtc/videoengine/ViEOMXHelper$LookupMode:DECODER	Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;
    //   559: invokestatic 462	org/webrtc/videoengine/ViEOMXHelper:isCodecPresent	(Ljava/lang/String;Ljava/util/Map;Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;)Z
    //   562: iand
    //   563: pop
    //   564: goto -330 -> 234
    //   567: iload 4
    //   569: ldc_w 533
    //   572: getstatic 75	org/webrtc/videoengine/ViEOMXHelper:h264_codecs	Ljava/util/Map;
    //   575: getstatic 498	org/webrtc/videoengine/ViEOMXHelper$LookupMode:DECODER	Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;
    //   578: invokestatic 462	org/webrtc/videoengine/ViEOMXHelper:isCodecPresent	(Ljava/lang/String;Ljava/util/Map;Lorg/webrtc/videoengine/ViEOMXHelper$LookupMode;)Z
    //   581: iand
    //   582: pop
    //   583: goto -349 -> 234
    //   586: iload 4
    //   588: ifne +133 -> 721
    //   591: ldc_w 533
    //   594: getstatic 75	org/webrtc/videoengine/ViEOMXHelper:h264_codecs	Ljava/util/Map;
    //   597: invokestatic 624	org/webrtc/videoengine/ViEOMXHelper:isCodecPresent	(Ljava/lang/String;Ljava/util/Map;)Z
    //   600: istore 11
    //   602: iload 11
    //   604: iload 4
    //   606: iand
    //   607: istore 12
    //   609: new 84	java/lang/StringBuilder
    //   612: dup
    //   613: invokespecial 85	java/lang/StringBuilder:<init>	()V
    //   616: ldc_w 521
    //   619: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   622: aload_1
    //   623: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   626: ldc_w 605
    //   629: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   632: astore 13
    //   634: iload 12
    //   636: ifeq +48 -> 684
    //   639: ldc_w 607
    //   642: astore 14
    //   644: aload 13
    //   646: aload 14
    //   648: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   651: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   654: invokestatic 177	org/webrtc/videoengine/ViEOMXHelper:log	(Ljava/lang/String;)V
    //   657: getstatic 57	org/webrtc/videoengine/ViEOMXHelper:_h264_available	Ljava/util/concurrent/atomic/AtomicInteger;
    //   660: astore 15
    //   662: iload 12
    //   664: ifeq +28 -> 692
    //   667: iconst_0
    //   668: istore 16
    //   670: aload 15
    //   672: iload 16
    //   674: invokevirtual 610	java/util/concurrent/atomic/AtomicInteger:set	(I)V
    //   677: iload 12
    //   679: ifeq -652 -> 27
    //   682: iconst_0
    //   683: ireturn
    //   684: ldc_w 612
    //   687: astore 14
    //   689: goto -45 -> 644
    //   692: iload_0
    //   693: istore 16
    //   695: goto -25 -> 670
    //   698: ldc_w 612
    //   701: astore 6
    //   703: goto -234 -> 469
    //   706: iload_0
    //   707: istore 8
    //   709: goto -214 -> 495
    //   712: astore_2
    //   713: aload_2
    //   714: astore_3
    //   715: iconst_0
    //   716: istore 4
    //   718: goto -284 -> 434
    //   721: iload 4
    //   723: istore 12
    //   725: goto -116 -> 609
    // Local variable table:
    //   start	length	slot	name	signature
    //   1	706	0	i	int
    //   41	582	1	str1	String
    //   712	2	2	localObject1	Object
    //   433	282	3	localObject2	Object
    //   57	665	4	bool1	boolean
    //   457	13	5	localStringBuilder1	java.lang.StringBuilder
    //   467	235	6	str2	String
    //   485	11	7	localAtomicInteger1	AtomicInteger
    //   488	220	8	j	int
    //   51	6	9	bool2	boolean
    //   429	3	10	localObject3	Object
    //   600	7	11	bool3	boolean
    //   607	117	12	k	int
    //   632	13	13	localStringBuilder2	java.lang.StringBuilder
    //   642	46	14	str3	String
    //   660	11	15	localAtomicInteger2	AtomicInteger
    //   668	26	16	m	int
    //   164	385	17	localOMXQuirks	ViEOMXHelper.OMXQuirks
    //   182	46	18	localOMXNode1	ViEOMXHelper.OMXNode
    //   225	59	19	n	int
    //   368	28	21	localMap1	Map
    //   375	23	22	str4	String
    //   393	24	23	localOMXNode2	ViEOMXHelper.OMXNode
    //   299	28	26	localMap2	Map
    //   306	23	27	str5	String
    //   324	24	28	localOMXNode3	ViEOMXHelper.OMXNode
    //   87	13	30	localStringBuilder3	java.lang.StringBuilder
    //   97	39	31	str6	String
    //   115	10	32	localAtomicInteger3	AtomicInteger
    //   22	3	33	i1	int
    //   30	1	33	i2	int
    // Exception table:
    //   from	to	target	type
    //   140	184	429	finally
    //   189	207	429	finally
    //   212	227	429	finally
    //   227	234	429	finally
    //   278	285	429	finally
    //   288	357	429	finally
    //   357	426	429	finally
    //   504	523	429	finally
    //   526	543	429	finally
    //   546	564	429	finally
    //   567	583	429	finally
    //   591	602	429	finally
    //   42	53	712	finally
  }
  
  /* Error */
  public static boolean isVP8Available()
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_0
    //   2: iconst_m1
    //   3: getstatic 59	org/webrtc/videoengine/ViEOMXHelper:_vp8_available	Ljava/util/concurrent/atomic/AtomicInteger;
    //   6: invokevirtual 600	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   9: if_icmpeq +26 -> 35
    //   12: getstatic 59	org/webrtc/videoengine/ViEOMXHelper:_vp8_available	Ljava/util/concurrent/atomic/AtomicInteger;
    //   15: invokevirtual 600	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   18: ifeq +11 -> 29
    //   21: iload_0
    //   22: istore 20
    //   24: iload 20
    //   26: istore_0
    //   27: iload_0
    //   28: ireturn
    //   29: iconst_0
    //   30: istore 20
    //   32: goto -8 -> 24
    //   35: getstatic 427	android/os/Build:PRODUCT	Ljava/lang/String;
    //   38: invokevirtual 430	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   41: astore_1
    //   42: getstatic 65	org/webrtc/videoengine/ViEOMXHelper:blacklistedModels	Ljava/util/Map;
    //   45: aload_1
    //   46: invokeinterface 603 2 0
    //   51: istore 9
    //   53: iconst_0
    //   54: iload 9
    //   56: ior
    //   57: istore 10
    //   59: iload 10
    //   61: ifeq +79 -> 140
    //   64: new 84	java/lang/StringBuilder
    //   67: dup
    //   68: invokespecial 85	java/lang/StringBuilder:<init>	()V
    //   71: ldc_w 521
    //   74: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   77: aload_1
    //   78: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   81: ldc_w 627
    //   84: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   87: astore 17
    //   89: iload 10
    //   91: ifeq +41 -> 132
    //   94: ldc_w 607
    //   97: astore 18
    //   99: aload 17
    //   101: aload 18
    //   103: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   106: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   109: invokestatic 177	org/webrtc/videoengine/ViEOMXHelper:log	(Ljava/lang/String;)V
    //   112: getstatic 59	org/webrtc/videoengine/ViEOMXHelper:_vp8_available	Ljava/util/concurrent/atomic/AtomicInteger;
    //   115: astore 19
    //   117: iload 10
    //   119: ifeq +5 -> 124
    //   122: iconst_0
    //   123: istore_0
    //   124: aload 19
    //   126: iload_0
    //   127: invokevirtual 610	java/util/concurrent/atomic/AtomicInteger:set	(I)V
    //   130: iconst_0
    //   131: ireturn
    //   132: ldc_w 612
    //   135: astore 18
    //   137: goto -38 -> 99
    //   140: getstatic 73	org/webrtc/videoengine/ViEOMXHelper:whitelistedModels	Ljava/util/Map;
    //   143: aload_1
    //   144: invokeinterface 603 2 0
    //   149: ifeq +74 -> 223
    //   152: getstatic 80	org/webrtc/videoengine/ViEOMXHelper:vp8_colorspaces	Ljava/util/Set;
    //   155: getstatic 73	org/webrtc/videoengine/ViEOMXHelper:whitelistedModels	Ljava/util/Map;
    //   158: aload_1
    //   159: invokeinterface 413 2 0
    //   164: checkcast 135	org/webrtc/videoengine/ViEOMXHelper$OMXQuirks
    //   167: getfield 620	org/webrtc/videoengine/ViEOMXHelper$OMXQuirks:encoder	I
    //   170: invokestatic 633	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   173: invokeinterface 477 2 0
    //   178: pop
    //   179: new 84	java/lang/StringBuilder
    //   182: dup
    //   183: invokespecial 85	java/lang/StringBuilder:<init>	()V
    //   186: ldc_w 521
    //   189: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   192: aload_1
    //   193: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   196: ldc_w 627
    //   199: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   202: ldc_w 612
    //   205: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   208: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   211: invokestatic 177	org/webrtc/videoengine/ViEOMXHelper:log	(Ljava/lang/String;)V
    //   214: getstatic 59	org/webrtc/videoengine/ViEOMXHelper:_vp8_available	Ljava/util/concurrent/atomic/AtomicInteger;
    //   217: iload_0
    //   218: invokevirtual 610	java/util/concurrent/atomic/AtomicInteger:set	(I)V
    //   221: iload_0
    //   222: ireturn
    //   223: iload 10
    //   225: ifne +3 -> 228
    //   228: new 84	java/lang/StringBuilder
    //   231: dup
    //   232: invokespecial 85	java/lang/StringBuilder:<init>	()V
    //   235: ldc_w 521
    //   238: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   241: aload_1
    //   242: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   245: ldc_w 627
    //   248: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   251: astore 12
    //   253: iload 10
    //   255: ifeq +48 -> 303
    //   258: ldc_w 607
    //   261: astore 13
    //   263: aload 12
    //   265: aload 13
    //   267: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   270: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   273: invokestatic 177	org/webrtc/videoengine/ViEOMXHelper:log	(Ljava/lang/String;)V
    //   276: getstatic 59	org/webrtc/videoengine/ViEOMXHelper:_vp8_available	Ljava/util/concurrent/atomic/AtomicInteger;
    //   279: astore 14
    //   281: iload 10
    //   283: ifeq +28 -> 311
    //   286: iconst_0
    //   287: istore 15
    //   289: aload 14
    //   291: iload 15
    //   293: invokevirtual 610	java/util/concurrent/atomic/AtomicInteger:set	(I)V
    //   296: iload 10
    //   298: ifeq -271 -> 27
    //   301: iconst_0
    //   302: ireturn
    //   303: ldc_w 612
    //   306: astore 13
    //   308: goto -45 -> 263
    //   311: iload_0
    //   312: istore 15
    //   314: goto -25 -> 289
    //   317: astore_2
    //   318: aload_2
    //   319: astore_3
    //   320: iconst_0
    //   321: istore 4
    //   323: new 84	java/lang/StringBuilder
    //   326: dup
    //   327: invokespecial 85	java/lang/StringBuilder:<init>	()V
    //   330: ldc_w 521
    //   333: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   336: aload_1
    //   337: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   340: ldc_w 627
    //   343: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   346: astore 5
    //   348: iload 4
    //   350: ifeq +43 -> 393
    //   353: ldc_w 607
    //   356: astore 6
    //   358: aload 5
    //   360: aload 6
    //   362: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   365: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   368: invokestatic 177	org/webrtc/videoengine/ViEOMXHelper:log	(Ljava/lang/String;)V
    //   371: getstatic 59	org/webrtc/videoengine/ViEOMXHelper:_vp8_available	Ljava/util/concurrent/atomic/AtomicInteger;
    //   374: astore 7
    //   376: iconst_0
    //   377: istore 8
    //   379: iload 4
    //   381: ifeq +20 -> 401
    //   384: aload 7
    //   386: iload 8
    //   388: invokevirtual 610	java/util/concurrent/atomic/AtomicInteger:set	(I)V
    //   391: aload_3
    //   392: athrow
    //   393: ldc_w 612
    //   396: astore 6
    //   398: goto -40 -> 358
    //   401: iload_0
    //   402: istore 8
    //   404: goto -20 -> 384
    //   407: astore 11
    //   409: iload 10
    //   411: istore 4
    //   413: aload 11
    //   415: astore_3
    //   416: goto -93 -> 323
    // Local variable table:
    //   start	length	slot	name	signature
    //   1	401	0	i	int
    //   41	296	1	str1	String
    //   317	2	2	localObject1	Object
    //   319	97	3	localObject2	Object
    //   321	91	4	j	int
    //   346	13	5	localStringBuilder1	java.lang.StringBuilder
    //   356	41	6	str2	String
    //   374	11	7	localAtomicInteger1	AtomicInteger
    //   377	26	8	k	int
    //   51	6	9	bool	boolean
    //   57	353	10	m	int
    //   407	7	11	localObject3	Object
    //   251	13	12	localStringBuilder2	java.lang.StringBuilder
    //   261	46	13	str3	String
    //   279	11	14	localAtomicInteger2	AtomicInteger
    //   287	26	15	n	int
    //   87	13	17	localStringBuilder3	java.lang.StringBuilder
    //   97	39	18	str4	String
    //   115	10	19	localAtomicInteger3	AtomicInteger
    //   22	3	20	i1	int
    //   30	1	20	i2	int
    // Exception table:
    //   from	to	target	type
    //   42	53	317	finally
    //   140	179	407	finally
  }
  
  private static final void loadExternalQuirkLists(String[] paramArrayOfString)
  {
    if (paramArrayOfString == null) {
      return;
    }
    int i = paramArrayOfString.length;
    int j = 0;
    label10:
    File localFile;
    if (j < i)
    {
      localFile = new File(paramArrayOfString[j]);
      if (localFile.exists()) {
        break label39;
      }
    }
    for (;;)
    {
      j++;
      break label10;
      break;
      label39:
      log("QUIRKS-ex: found " + localFile + " source");
      try
      {
        JsonReader localJsonReader = new JsonReader(new InputStreamReader(new FileInputStream(localFile)));
        localJsonReader.setLenient(true);
        localJsonReader.beginObject();
        for (;;)
        {
          String str1;
          if (localJsonReader.hasNext())
          {
            str1 = localJsonReader.nextName();
            if (str1 != null) {}
          }
          else
          {
            localJsonReader.endObject();
            break;
          }
          String str2 = str1.toLowerCase();
          if (("whitelist".equals(str2)) || ("blacklist".equals(str2)))
          {
            log("QUIRKS-ex: found " + str2 + " section");
            Map localMap1;
            label206:
            Map localMap2;
            if ("blacklist".equals(str2))
            {
              localMap1 = blacklistedModels;
              if (!"blacklist".equals(str2)) {
                break label323;
              }
              localMap2 = whitelistedModels;
              label222:
              localJsonReader.beginArray();
            }
            for (;;)
            {
              boolean bool = localJsonReader.hasNext();
              if (bool)
              {
                try
                {
                  if (!ViEOMXHelper.OMXQuirks.fromJSON(localJsonReader, localMap1, localMap2)) {
                    break label331;
                  }
                  log("QUIRKS-ex:  new entity successfully added to " + str2);
                }
                catch (Exception localException2)
                {
                  log("QUIRKS-ex: got exception from entity, " + localException2.toString());
                }
              }
              else
              {
                localJsonReader.endArray();
                break;
                localMap1 = whitelistedModels;
                break label206;
                label323:
                localMap2 = blacklistedModels;
                break label222;
                label331:
                log("QUIRKS-ex:  new entity was dropped for " + str2);
              }
            }
          }
          if ("minimal_api_level".contains(str2))
          {
            String str3;
            int k;
            if ("STRING".equals(localJsonReader.peek().toString()))
            {
              str3 = localJsonReader.nextString();
              k = 10;
              if (str3.startsWith("0x"))
              {
                str3 = str3.replaceFirst("0x", "");
                k = 16;
              }
            }
            for (_h264_minimal_api_level = Integer.parseInt(str3, k);; _h264_minimal_api_level = localJsonReader.nextInt())
            {
              log("QUIRKS-ex: minimal API level overridden by " + _h264_minimal_api_level);
              break;
            }
          }
          localJsonReader.skipValue();
        }
      }
      catch (Exception localException1) {}
    }
  }
  
  private static void log(String paramString)
  {
    log(false, paramString);
  }
  
  private static void log(boolean paramBoolean, String paramString)
  {
    if (paramBoolean)
    {
      Log.d(TAG, paramString);
      return;
    }
    ViberApplication.log(3, TAG, paramString);
  }
  
  private static int readIntFromJson(JsonReader paramJsonReader)
  {
    if ("STRING".equals(paramJsonReader.peek().toString()))
    {
      String str = paramJsonReader.nextString();
      int i = 10;
      if (str.startsWith("0x"))
      {
        str = str.replaceFirst("0x", "");
        i = 16;
      }
      return Integer.parseInt(str, i);
    }
    return paramJsonReader.nextInt();
  }
  
  public static int[] vp8Colorspaces()
  {
    int[] arrayOfInt = new int[vp8_colorspaces.size()];
    Iterator localIterator = vp8_colorspaces.iterator();
    int k;
    for (int i = 0; localIterator.hasNext(); i = k)
    {
      int j = ((Integer)localIterator.next()).intValue();
      k = i + 1;
      arrayOfInt[i] = j;
    }
    return arrayOfInt;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     org.webrtc.videoengine.ViEOMXHelper
 * JD-Core Version:    0.7.0.1
 */
package com.viber.voip.sound;

import android.os.Environment;
import android.os.Handler;
import android.text.format.DateFormat;
import com.viber.jni.MediaStats;
import com.viber.voip.dc;
import com.viber.voip.dk;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import org.webrtc.videoengine.ViEOMXHelper.Native;

public class VoENativeDebugHelper
{
  private static Set<VoENativeDebugHelper.MediaStatisticsListener> _statsListeners = new HashSet();
  private static String _videoCaptureDebugLocation;
  private static boolean _videoCaptureEnabled;
  private static String _videoInRtpdumpLocation;
  private static String _videoOutRtpdumpLocation;
  private static boolean _videoRtpdumpEnabled;
  private static String _voiceInRtpdumpLocation = null;
  private static String _voiceOutRtpdumpLocation = null;
  private static boolean _voiceRtpdumpEnabled;
  
  static
  {
    _videoInRtpdumpLocation = null;
    _videoOutRtpdumpLocation = null;
    _videoCaptureDebugLocation = null;
    _voiceRtpdumpEnabled = false;
    _videoRtpdumpEnabled = false;
    _videoCaptureEnabled = false;
  }
  
  public static void addMediaStatisticsListener(VoENativeDebugHelper.MediaStatisticsListener paramMediaStatisticsListener)
  {
    synchronized (_statsListeners)
    {
      _statsListeners.add(paramMediaStatisticsListener);
      return;
    }
  }
  
  public static void clearDumps()
  {
    try
    {
      File localFile = new File(Environment.getExternalStorageDirectory().getCanonicalPath() + "/viber/");
      for (String str : localFile.list(new VoENativeDebugHelper.1())) {
        new File(localFile.getAbsoluteFile() + "/" + str).delete();
      }
      return;
    }
    catch (IOException localIOException) {}
  }
  
  public static final String getStandardDebugLocation(String paramString)
  {
    return Environment.getExternalStorageDirectory().getAbsolutePath() + "/viber/" + paramString + "_" + DateFormat.format("yyyyMMdd-ahhmmss", new Date()) + ".rtpdump";
  }
  
  public static String getVideoCaptureLocation()
  {
    if (!_videoCaptureEnabled) {
      return null;
    }
    if (_videoCaptureDebugLocation != null) {
      return _videoCaptureDebugLocation;
    }
    return getStandardDebugLocation("videocapture") + ".i420p";
  }
  
  public static String getVideoInRtpdumpLocation()
  {
    if (!_videoRtpdumpEnabled) {
      return null;
    }
    if (_videoInRtpdumpLocation != null) {
      return _videoInRtpdumpLocation;
    }
    return getStandardDebugLocation("videoin");
  }
  
  public static void getVideoInRtpdumpLocation(String paramString)
  {
    _videoInRtpdumpLocation = paramString;
  }
  
  public static String getVideoOutRtpdumpLocation()
  {
    if (!_videoRtpdumpEnabled) {
      return null;
    }
    if (_videoOutRtpdumpLocation != null) {
      return _videoOutRtpdumpLocation;
    }
    return getStandardDebugLocation("videoout");
  }
  
  public static void getVideoOutRtpdumpLocation(String paramString)
  {
    _videoOutRtpdumpLocation = paramString;
  }
  
  public static String getVoiceInRtpdumpLocation()
  {
    if (!_voiceRtpdumpEnabled) {
      return null;
    }
    if (_voiceInRtpdumpLocation != null) {
      return _voiceInRtpdumpLocation;
    }
    return getStandardDebugLocation("voicein");
  }
  
  public static String getVoiceOutRtpdumpLocation()
  {
    if (!_voiceRtpdumpEnabled) {
      return null;
    }
    if (_voiceOutRtpdumpLocation != null) {
      return _voiceOutRtpdumpLocation;
    }
    return getStandardDebugLocation("voiceout");
  }
  
  public static void getVoiceOutRtpdumpLocation(String paramString)
  {
    _voiceOutRtpdumpLocation = paramString;
  }
  
  public static boolean isVideoCaptureEnabled()
  {
    return _videoCaptureEnabled;
  }
  
  public static boolean isVideoRtpdumpEnabled()
  {
    return _videoRtpdumpEnabled;
  }
  
  public static boolean isVoiceRtpdumpEnabled()
  {
    return _voiceRtpdumpEnabled;
  }
  
  public static void removeMediaStatisticsListener(VoENativeDebugHelper.MediaStatisticsListener paramMediaStatisticsListener)
  {
    synchronized (_statsListeners)
    {
      _statsListeners.remove(paramMediaStatisticsListener);
      return;
    }
  }
  
  public static void setVideoCaptureEnabled(boolean paramBoolean)
  {
    _videoCaptureEnabled = paramBoolean;
  }
  
  public static void setVideoCaptureLocation(String paramString)
  {
    _videoCaptureDebugLocation = paramString;
  }
  
  public static void setVideoRtpdumpEnabled(boolean paramBoolean)
  {
    _videoRtpdumpEnabled = paramBoolean;
  }
  
  public static void setVoiceInRtpdumpLocation(String paramString)
  {
    _voiceInRtpdumpLocation = paramString;
  }
  
  public static void setVoiceRtpdumpEnabled(boolean paramBoolean)
  {
    _voiceRtpdumpEnabled = paramBoolean;
  }
  
  @ViEOMXHelper.Native
  private static void updateStatistics(MediaStats paramMediaStats)
  {
    dc.a(dk.a).post(new VoENativeDebugHelper.2(paramMediaStats));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sound.VoENativeDebugHelper
 * JD-Core Version:    0.7.0.1
 */
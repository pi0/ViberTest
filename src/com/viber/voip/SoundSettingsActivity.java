package com.viber.voip;

import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.support.v4.app.NavUtils;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.view.MenuItem;
import com.viber.jni.DeviceFlags;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.app.ViberPreferenceActivity;
import com.viber.voip.settings.l;
import com.viber.voip.settings.m;
import com.viber.voip.settings.n;
import com.viber.voip.sound.AbstractSoundService;
import com.viber.voip.sound.ISoundService;
import com.viber.voip.sound.ISoundService.AudioModeCtl;
import com.viber.voip.sound.ISoundService.IAudioSettings;
import com.viber.voip.sound.ISoundService.IAudioSettings.IAudioSettingsListener;
import com.viber.voip.sound.ISoundService.IVocoderSettings;
import com.viber.voip.sound.ISoundService.IVocoderSettings.IVocoderDescriptor;
import com.viber.voip.sound.ISoundService.VocoderCtl;
import com.viber.voip.sound.SoundServiceCommonConfig.HtcHwConfig.HtcHwCtl;
import com.viber.voip.sound.VoENativeDebugHelper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.webrtc.videoengine.ViEVideoSupport;
import org.webrtc.voiceengine.NativeADMCtl;

public class SoundSettingsActivity
  extends ViberPreferenceActivity
  implements m
{
  private static final Set<String> a = new HashSet();
  private ISoundService.IAudioSettings b;
  private ISoundService.IAudioSettings c;
  private l d;
  private ISoundService.IAudioSettings.IAudioSettingsListener e = new bh(this);
  
  static
  {
    a.add("sound_settings_audio_driver");
    a.add("sound_settings_hw_agc_key");
    a.add("sound_settings_hw_iir_key");
    a.add("sound_settings_hw_ns_key");
    a.add("sound_settings_sw_agc_key");
    a.add("sound_settings_sw_aec_key");
    a.add("sound_settings_sw_ns_key");
    a.add("sound_settings_vad_key");
    a.add("sound_settings_rxns_key");
    a.add("sound_settings_ns_key");
    a.add("sound_settings_rxagc_key");
    a.add("sound_settings_agc_key");
    a.add("sound_settings_aec_key");
    a.add("sound_settings_speaker_vad_key");
    a.add("sound_settings_speaker_rxns_key");
    a.add("sound_settings_speaker_ns_key");
    a.add("sound_settings_speaker_rxagc_key");
    a.add("sound_settings_speaker_agc_key");
    a.add("sound_settings_speaker_aec_key");
    a.add("sound_settings_codec_key");
    a.add("sound_settings_vve_debug_voice_rtpdebug_key");
    a.add("sound_settings_vve_debug_video_rtpdebug_key");
    a.add("sound_settings_vve_debug_video_capture_key");
    a.add("sound_settings_vve_debug_clear_key");
    a.add("sound_settings_htc_hwaec");
    a.add("sound_settings_video");
  }
  
  private Preference a(String paramString)
  {
    return super.findPreference(paramString);
  }
  
  protected void a(NativeADMCtl paramNativeADMCtl, int paramInt)
  {
    int i = 1;
    int j = paramNativeADMCtl.getAvailableFeaturesMask(paramInt);
    int k = paramNativeADMCtl.getFeaturesMask(paramInt);
    ListPreference localListPreference1 = (ListPreference)a("sound_settings_hw_agc_key");
    int i1;
    label56:
    label85:
    int i4;
    label103:
    int i7;
    label132:
    label150:
    label181:
    int i10;
    label201:
    label232:
    int i13;
    label252:
    ListPreference localListPreference6;
    if (i == (j & 0x1))
    {
      int m = i;
      localListPreference1.setEnabled(m);
      if (i != (k & 0x1)) {
        break label313;
      }
      i1 = i;
      localListPreference1.setValueIndex(i1);
      ListPreference localListPreference2 = (ListPreference)a("sound_settings_hw_iir_key");
      if (2 != (j & 0x2)) {
        break label319;
      }
      int i2 = i;
      localListPreference2.setEnabled(i2);
      if (2 != (k & 0x2)) {
        break label325;
      }
      i4 = i;
      localListPreference2.setValueIndex(i4);
      ListPreference localListPreference3 = (ListPreference)a("sound_settings_hw_ns_key");
      if (4 != (j & 0x4)) {
        break label331;
      }
      int i5 = i;
      localListPreference3.setEnabled(i5);
      if (4 != (k & 0x4)) {
        break label337;
      }
      i7 = i;
      localListPreference3.setValueIndex(i7);
      ListPreference localListPreference4 = (ListPreference)a("sound_settings_sw_agc_key");
      if (8 != (j & 0x8)) {
        break label343;
      }
      int i8 = i;
      localListPreference4.setEnabled(i8);
      if (8 != (k & 0x8)) {
        break label349;
      }
      i10 = i;
      localListPreference4.setValueIndex(i10);
      ListPreference localListPreference5 = (ListPreference)a("sound_settings_sw_aec_key");
      if (16 != (j & 0x10)) {
        break label355;
      }
      int i11 = i;
      localListPreference5.setEnabled(i11);
      if (16 != (k & 0x10)) {
        break label361;
      }
      i13 = i;
      localListPreference5.setValueIndex(i13);
      localListPreference6 = (ListPreference)a("sound_settings_sw_ns_key");
      if (32 != (j & 0x20)) {
        break label367;
      }
      int i14 = i;
      label283:
      localListPreference6.setEnabled(i14);
      if (32 != (k & 0x20)) {
        break label373;
      }
    }
    for (;;)
    {
      localListPreference6.setValueIndex(i);
      return;
      int n = 0;
      break;
      label313:
      i1 = 0;
      break label56;
      label319:
      int i3 = 0;
      break label85;
      label325:
      i4 = 0;
      break label103;
      label331:
      int i6 = 0;
      break label132;
      label337:
      i7 = 0;
      break label150;
      label343:
      int i9 = 0;
      break label181;
      label349:
      i10 = 0;
      break label201;
      label355:
      int i12 = 0;
      break label232;
      label361:
      i13 = 0;
      break label252;
      label367:
      int i15 = 0;
      break label283;
      label373:
      i = 0;
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903049);
    getSupportActionBar().setDisplayShowHomeEnabled(false);
    getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    NativeADMCtl localNativeADMCtl = NativeADMCtl.getInstance();
    this.b = ViberApplication.getInstance().getSoundService().getAudioSettings(ISoundService.AudioModeCtl.MODE_EARPIECE);
    this.b.addListener(this.e);
    int i = this.b.getAECMode();
    int j = this.b.getAGCMode();
    int k = this.b.getRxAGCMode();
    int m = this.b.getNSMode();
    int n = this.b.getRxNSMode();
    int i1 = this.b.getVADMode();
    this.d = ViberApplication.preferences();
    n.a(this, this.d, a);
    this.d.a("sound_settings_aec_key", String.valueOf(i));
    this.d.a("sound_settings_agc_key", String.valueOf(j));
    this.d.a("sound_settings_rxagc_key", String.valueOf(k));
    this.d.a("sound_settings_ns_key", String.valueOf(m));
    this.d.a("sound_settings_rxns_key", String.valueOf(n));
    this.d.a("sound_settings_vad_key", String.valueOf(i1));
    this.c = ViberApplication.getInstance().getSoundService().getAudioSettings(ISoundService.AudioModeCtl.MODE_LOUDSPEAKER);
    int i2 = this.c.getAECMode();
    int i3 = this.c.getAGCMode();
    int i4 = this.c.getRxAGCMode();
    int i5 = this.c.getNSMode();
    int i6 = this.c.getRxNSMode();
    int i7 = this.c.getVADMode();
    this.d.a("sound_settings_speaker_aec_key", String.valueOf(i2));
    this.d.a("sound_settings_speaker_agc_key", String.valueOf(i3));
    this.d.a("sound_settings_speaker_rxagc_key", String.valueOf(i4));
    this.d.a("sound_settings_speaker_ns_key", String.valueOf(i5));
    this.d.a("sound_settings_speaker_rxns_key", String.valueOf(i6));
    this.d.a("sound_settings_speaker_vad_key", String.valueOf(i7));
    if (this.d.b("sound_settings_audio_driver", "").length() == 0)
    {
      if (!localNativeADMCtl.isNativeDriverAvailable()) {
        break label655;
      }
      this.d.a("sound_settings_audio_driver", "2");
    }
    ArrayList localArrayList1;
    ArrayList localArrayList2;
    for (;;)
    {
      addPreferencesFromResource(2131034125);
      a(localNativeADMCtl, Integer.parseInt(this.d.b("sound_settings_audio_driver", "0")));
      ListPreference localListPreference1 = (ListPreference)a("sound_settings_audio_driver");
      localListPreference1.setEnabled(localNativeADMCtl.isInitialized());
      localListPreference1.setOnPreferenceChangeListener(new bf(this, localNativeADMCtl));
      localArrayList1 = new ArrayList();
      localArrayList1.add("Default (selected by server)");
      localArrayList2 = new ArrayList();
      localArrayList2.add("-1");
      Iterator localIterator = ViberApplication.getInstance().getSoundService().getVocoderSettings().getSupportedCodecs().iterator();
      while (localIterator.hasNext())
      {
        ISoundService.IVocoderSettings.IVocoderDescriptor localIVocoderDescriptor = (ISoundService.IVocoderSettings.IVocoderDescriptor)localIterator.next();
        localArrayList1.add(localIVocoderDescriptor.getVocoderName());
        localArrayList2.add(String.valueOf(localIVocoderDescriptor.getVocoderId()));
      }
      label655:
      if (localNativeADMCtl.isOpenSLESDriverAvailable()) {
        this.d.a("sound_settings_audio_driver", "1");
      } else {
        this.d.a("sound_settings_audio_driver", "4");
      }
    }
    ListPreference localListPreference2 = (ListPreference)a("sound_settings_codec_key");
    localListPreference2.setEntries((CharSequence[])localArrayList1.toArray(new CharSequence[localArrayList1.size()]));
    localListPreference2.setEntryValues((CharSequence[])localArrayList2.toArray(new CharSequence[localArrayList2.size()]));
    ((ListPreference)a("sound_settings_htc_hwaec")).setEnabled(SoundServiceCommonConfig.HtcHwConfig.HtcHwCtl.ctlHwAecSupported());
    ((ListPreference)a("sound_settings_video")).setEnabled(ViEVideoSupport.isVideoCallSupported());
    CheckBoxPreference localCheckBoxPreference = (CheckBoxPreference)a("sound_settings_vve_debug_clear_key");
    localCheckBoxPreference.setChecked(false);
    localCheckBoxPreference.setEnabled(true);
    localCheckBoxPreference.setOnPreferenceChangeListener(new bg(this, localCheckBoxPreference));
    ListPreference localListPreference3 = (ListPreference)a("sound_settings_vve_debug_video_capture_key");
    String str1;
    String str2;
    label878:
    ListPreference localListPreference5;
    if (VoENativeDebugHelper.isVideoCaptureEnabled())
    {
      str1 = "1";
      localListPreference3.setValue(str1);
      ListPreference localListPreference4 = (ListPreference)a("sound_settings_vve_debug_video_rtpdebug_key");
      if (!VoENativeDebugHelper.isVideoRtpdumpEnabled()) {
        break label922;
      }
      str2 = "1";
      localListPreference4.setValue(str2);
      localListPreference5 = (ListPreference)a("sound_settings_vve_debug_voice_rtpdebug_key");
      if (!VoENativeDebugHelper.isVoiceRtpdumpEnabled()) {
        break label929;
      }
    }
    label922:
    label929:
    for (String str3 = "1";; str3 = "0")
    {
      localListPreference5.setValue(str3);
      return;
      str1 = "0";
      break;
      str2 = "0";
      break label878;
    }
  }
  
  public void onDestroy()
  {
    this.d.b(this);
    this.b.removeListener(this.e);
    super.onDestroy();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return false;
    }
    NavUtils.navigateUpFromSameTask(this);
    return true;
  }
  
  public void onPause()
  {
    super.onPause();
    this.d.b(this);
  }
  
  protected void onResume()
  {
    super.onResume();
    this.d.a(this);
  }
  
  public void onSharedPreferenceChanged(l paraml, String paramString)
  {
    boolean bool = true;
    NativeADMCtl localNativeADMCtl = NativeADMCtl.getInstance();
    int i = Integer.valueOf(paraml.b("sound_settings_audio_driver", "0")).intValue();
    if (paramString.equals("sound_settings_audio_driver")) {}
    do
    {
      do
      {
        return;
        if (paramString.equals("sound_settings_hw_agc_key"))
        {
          if (Integer.valueOf(paraml.b("sound_settings_hw_agc_key", "0")).intValue() == 0) {}
          for (int i15 = 0xFFFFFFFE & localNativeADMCtl.getFeaturesMask(i);; i15 = 0x1 | localNativeADMCtl.getFeaturesMask(i))
          {
            localNativeADMCtl.setFeaturesMask(i, i15);
            return;
          }
        }
        if (paramString.equals("sound_settings_hw_iir_key"))
        {
          if (Integer.valueOf(paraml.b("sound_settings_hw_iir_key", "0")).intValue() == 0) {}
          for (int i14 = 0xFFFFFFFD & localNativeADMCtl.getFeaturesMask(i);; i14 = 0x2 | localNativeADMCtl.getFeaturesMask(i))
          {
            localNativeADMCtl.setFeaturesMask(i, i14);
            return;
          }
        }
        if (paramString.equals("sound_settings_hw_ns_key"))
        {
          if (Integer.valueOf(paraml.b("sound_settings_hw_ns_key", "0")).intValue() == 0) {}
          for (int i13 = 0xFFFFFFFB & localNativeADMCtl.getFeaturesMask(i);; i13 = 0x4 | localNativeADMCtl.getFeaturesMask(i))
          {
            localNativeADMCtl.setFeaturesMask(i, i13);
            return;
          }
        }
        if (paramString.equals("sound_settings_sw_agc_key"))
        {
          if (Integer.valueOf(paraml.b("sound_settings_sw_agc_key", "0")).intValue() == 0) {}
          for (int i12 = 0xFFFFFFF7 & localNativeADMCtl.getFeaturesMask(i);; i12 = 0x8 | localNativeADMCtl.getFeaturesMask(i))
          {
            localNativeADMCtl.setFeaturesMask(i, i12);
            return;
          }
        }
        if (paramString.equals("sound_settings_sw_aec_key"))
        {
          if (Integer.valueOf(paraml.b("sound_settings_sw_aec_key", "0")).intValue() == 0) {}
          for (int i11 = 0xFFFFFFEF & localNativeADMCtl.getFeaturesMask(i);; i11 = 0x10 | localNativeADMCtl.getFeaturesMask(i))
          {
            localNativeADMCtl.setFeaturesMask(i, i11);
            return;
          }
        }
        if (paramString.equals("sound_settings_sw_ns_key"))
        {
          if (Integer.valueOf(paraml.b("sound_settings_sw_ns_key", "0")).intValue() == 0) {}
          for (int i10 = 0xFFFFFFDF & localNativeADMCtl.getFeaturesMask(i);; i10 = 0x20 | localNativeADMCtl.getFeaturesMask(i))
          {
            localNativeADMCtl.setFeaturesMask(i, i10);
            return;
          }
        }
        if (paramString.equals("sound_settings_aec_key"))
        {
          int i9 = Integer.valueOf(paraml.b("sound_settings_aec_key", "0")).intValue();
          this.b.setAECMode(i9);
          return;
        }
        if (paramString.equals("sound_settings_agc_key"))
        {
          int i8 = Integer.valueOf(paraml.b("sound_settings_agc_key", "0")).intValue();
          this.b.setAGCMode(i8);
          return;
        }
        if (paramString.equals("sound_settings_rxagc_key"))
        {
          int i7 = Integer.valueOf(paraml.b("sound_settings_rxagc_key", "0")).intValue();
          this.b.setRxAGCMode(i7);
          return;
        }
        if (paramString.equals("sound_settings_ns_key"))
        {
          int i6 = Integer.valueOf(paraml.b("sound_settings_ns_key", "0")).intValue();
          this.b.setNSMode(i6);
          return;
        }
        if (paramString.equals("sound_settings_rxns_key"))
        {
          int i5 = Integer.valueOf(paraml.b("sound_settings_rxns_key", "0")).intValue();
          this.b.setRxNSMode(i5);
          return;
        }
        if (paramString.equals("sound_settings_vad_key"))
        {
          int i4 = Integer.valueOf(paraml.b("sound_settings_vad_key", "0")).intValue();
          this.b.setVADMode(i4);
          return;
        }
        if (paramString.equals("sound_settings_speaker_aec_key"))
        {
          int i3 = Integer.valueOf(paraml.b("sound_settings_speaker_aec_key", "0")).intValue();
          this.c.setAECMode(i3);
          return;
        }
        if (paramString.equals("sound_settings_speaker_agc_key"))
        {
          int i2 = Integer.valueOf(paraml.b("sound_settings_speaker_agc_key", "0")).intValue();
          this.c.setAGCMode(i2);
          return;
        }
        if (paramString.equals("sound_settings_speaker_rxagc_key"))
        {
          int i1 = Integer.valueOf(paraml.b("sound_settings_speaker_rxagc_key", "0")).intValue();
          this.c.setRxAGCMode(i1);
          return;
        }
        if (paramString.equals("sound_settings_speaker_ns_key"))
        {
          int n = Integer.valueOf(paraml.b("sound_settings_speaker_ns_key", "0")).intValue();
          this.c.setNSMode(n);
          return;
        }
        if (paramString.equals("sound_settings_speaker_rxns_key"))
        {
          int m = Integer.valueOf(paraml.b("sound_settings_speaker_rxns_key", "0")).intValue();
          this.c.setRxNSMode(m);
          return;
        }
        if (paramString.equals("sound_settings_speaker_vad_key"))
        {
          int k = Integer.valueOf(paraml.b("sound_settings_speaker_vad_key", "0")).intValue();
          this.c.setVADMode(k);
          return;
        }
        if (paramString.equals("sound_settings_codec_key"))
        {
          int j = Integer.valueOf(paraml.b("sound_settings_codec_key", "0")).intValue();
          ViberApplication.getInstance().getSoundService().setVocoderCtl(ISoundService.VocoderCtl.VOECTL_FORCE_CODEC, j, j);
          return;
        }
      } while (paramString.equals("sound_settings_htc_hwaec"));
      if ("sound_settings_vve_debug_voice_rtpdebug_key".equals(paramString))
      {
        if (Integer.valueOf(paraml.b("sound_settings_vve_debug_voice_rtpdebug_key", "0")).intValue() != 0) {}
        for (;;)
        {
          VoENativeDebugHelper.setVoiceRtpdumpEnabled(bool);
          return;
          bool = false;
        }
      }
      if ("sound_settings_vve_debug_video_rtpdebug_key".equals(paramString))
      {
        if (Integer.valueOf(paraml.b("sound_settings_vve_debug_video_rtpdebug_key", "0")).intValue() != 0) {}
        for (;;)
        {
          VoENativeDebugHelper.setVideoRtpdumpEnabled(bool);
          return;
          bool = false;
        }
      }
      if ("sound_settings_vve_debug_video_capture_key".equals(paramString))
      {
        if (Integer.valueOf(paraml.b("sound_settings_vve_debug_video_capture_key", "0")).intValue() != 0) {}
        for (;;)
        {
          VoENativeDebugHelper.setVideoCaptureEnabled(bool);
          return;
          bool = false;
        }
      }
    } while (!paramString.equals("sound_settings_video"));
    if (!"0".equals(paraml.b("sound_settings_video", "1")))
    {
      if (!bool) {
        break label1139;
      }
      AbstractSoundService.setDeviceFlags(0x40 | DeviceFlags.getFlagsForDeviceModel());
    }
    for (;;)
    {
      ViberApplication.getInstance().getPhoneController(false).addInitializedListener(new bn(this, bool));
      return;
      bool = false;
      break;
      label1139:
      AbstractSoundService.setDeviceFlags(0xFFFFFFBF & DeviceFlags.getFlagsForDeviceModel());
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.SoundSettingsActivity
 * JD-Core Version:    0.7.0.1
 */
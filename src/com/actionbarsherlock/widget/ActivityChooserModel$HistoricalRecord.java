package com.actionbarsherlock.widget;

import android.content.ComponentName;
import java.math.BigDecimal;

public final class ActivityChooserModel$HistoricalRecord
{
  public final ComponentName activity;
  public final long time;
  public final float weight;
  
  public ActivityChooserModel$HistoricalRecord(ComponentName paramComponentName, long paramLong, float paramFloat)
  {
    this.activity = paramComponentName;
    this.time = paramLong;
    this.weight = paramFloat;
  }
  
  public ActivityChooserModel$HistoricalRecord(String paramString, long paramLong, float paramFloat)
  {
    this(ComponentName.unflattenFromString(paramString), paramLong, paramFloat);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    HistoricalRecord localHistoricalRecord;
    do
    {
      return true;
      if (paramObject == null) {
        return false;
      }
      if (getClass() != paramObject.getClass()) {
        return false;
      }
      localHistoricalRecord = (HistoricalRecord)paramObject;
      if (this.activity == null)
      {
        if (localHistoricalRecord.activity != null) {
          return false;
        }
      }
      else if (!this.activity.equals(localHistoricalRecord.activity)) {
        return false;
      }
      if (this.time != localHistoricalRecord.time) {
        return false;
      }
    } while (Float.floatToIntBits(this.weight) == Float.floatToIntBits(localHistoricalRecord.weight));
    return false;
  }
  
  public int hashCode()
  {
    if (this.activity == null) {}
    for (int i = 0;; i = this.activity.hashCode()) {
      return 31 * (31 * (i + 31) + (int)(this.time ^ this.time >>> 32)) + Float.floatToIntBits(this.weight);
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[");
    localStringBuilder.append("; activity:").append(this.activity);
    localStringBuilder.append("; time:").append(this.time);
    localStringBuilder.append("; weight:").append(new BigDecimal(this.weight));
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.actionbarsherlock.widget.ActivityChooserModel.HistoricalRecord
 * JD-Core Version:    0.7.0.1
 */
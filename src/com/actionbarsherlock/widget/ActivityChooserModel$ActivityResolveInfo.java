package com.actionbarsherlock.widget;

import android.content.pm.ResolveInfo;
import java.math.BigDecimal;

public final class ActivityChooserModel$ActivityResolveInfo
  implements Comparable<ActivityResolveInfo>
{
  public final ResolveInfo resolveInfo;
  public float weight;
  
  public ActivityChooserModel$ActivityResolveInfo(ActivityChooserModel paramActivityChooserModel, ResolveInfo paramResolveInfo)
  {
    this.resolveInfo = paramResolveInfo;
  }
  
  public int compareTo(ActivityResolveInfo paramActivityResolveInfo)
  {
    return Float.floatToIntBits(paramActivityResolveInfo.weight) - Float.floatToIntBits(this.weight);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    ActivityResolveInfo localActivityResolveInfo;
    do
    {
      return true;
      if (paramObject == null) {
        return false;
      }
      if (getClass() != paramObject.getClass()) {
        return false;
      }
      localActivityResolveInfo = (ActivityResolveInfo)paramObject;
    } while (Float.floatToIntBits(this.weight) == Float.floatToIntBits(localActivityResolveInfo.weight));
    return false;
  }
  
  public int hashCode()
  {
    return 31 + Float.floatToIntBits(this.weight);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[");
    localStringBuilder.append("resolveInfo:").append(this.resolveInfo.toString());
    localStringBuilder.append("; weight:").append(new BigDecimal(this.weight));
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.actionbarsherlock.widget.ActivityChooserModel.ActivityResolveInfo
 * JD-Core Version:    0.7.0.1
 */
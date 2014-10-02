package com.viber.jni;

public class SqlJNIWrapper
{
  static
  {
    System.loadLibrary("VoipEngineNative");
  }
  
  public static final native boolean continueSelectExecution(long paramLong1, long paramLong2);
  
  public static final native long createNativeSqlWrapper(String paramString);
  
  public static final native void deinit(long paramLong);
  
  public static final native boolean destroyNativeSelectState(long paramLong1, long paramLong2);
  
  public static final native int exec(long paramLong, String paramString);
  
  public static final native int getColumnIndex(long paramLong1, long paramLong2, String paramString);
  
  public static final native String getColumnName(long paramLong1, long paramLong2, int paramInt);
  
  public static final native String getDbFileName(long paramLong);
  
  public static final native int getRowsCount(long paramLong1, long paramLong2);
  
  public static final native int init(long paramLong);
  
  public static final native boolean resetSelectExecution(long paramLong1, long paramLong2);
  
  public static final native long select(long paramLong, String paramString, char[] paramArrayOfChar, int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt1, int paramInt2);
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.SqlJNIWrapper
 * JD-Core Version:    0.7.0.1
 */
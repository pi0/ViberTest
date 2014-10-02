package com.viber.voip.calls.entities.impl;

import android.content.ContentValues;

public class a
{
  public static int a = 0;
  private static final String b = a.class.getSimpleName();
  private static String[] c = { "_id", "aggregate_hash", "number", "canonized_number", "date", "duration", "type", "looked", "token", "viber_call", "call_id", "end_reason", "start_reason", "viber_call_type" };
  private static int d = 1;
  private static int e = 2;
  private static int f = 3;
  private static int g = 4;
  private static int h = 5;
  private static int i = 6;
  private static int j = 7;
  private static int k = 8;
  private static int l = 9;
  private static int m = 10;
  private static int n = 11;
  private static int o = 12;
  private static int p = 13;
  
  private static ContentValues b(CallEntityImpl paramCallEntityImpl)
  {
    ContentValues localContentValues = new ContentValues();
    if (paramCallEntityImpl.getId() != -1L) {
      localContentValues.put("_id", Long.valueOf(paramCallEntityImpl.getId()));
    }
    if (paramCallEntityImpl.j() == 3) {}
    for (int i1 = 10;; i1 = 11)
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = paramCallEntityImpl.f();
      arrayOfObject[1] = Integer.valueOf(i1);
      localContentValues.put("aggregate_hash", Integer.valueOf(String.format("%s_%s", arrayOfObject).hashCode()));
      localContentValues.put("number", paramCallEntityImpl.f());
      localContentValues.put("canonized_number", paramCallEntityImpl.g());
      localContentValues.put("date", Long.valueOf(paramCallEntityImpl.h()));
      localContentValues.put("duration", Long.valueOf(paramCallEntityImpl.i()));
      localContentValues.put("type", Integer.valueOf(paramCallEntityImpl.j()));
      localContentValues.put("looked", Boolean.valueOf(paramCallEntityImpl.q()));
      localContentValues.put("token", Long.valueOf(paramCallEntityImpl.p()));
      localContentValues.put("viber_call", Boolean.valueOf(paramCallEntityImpl.k()));
      localContentValues.put("call_id", Long.valueOf(paramCallEntityImpl.e()));
      localContentValues.put("end_reason", Integer.valueOf(paramCallEntityImpl.s()));
      localContentValues.put("start_reason", Integer.valueOf(paramCallEntityImpl.r()));
      localContentValues.put("viber_call_type", Integer.valueOf(paramCallEntityImpl.v()));
      return localContentValues;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.calls.entities.impl.a
 * JD-Core Version:    0.7.0.1
 */
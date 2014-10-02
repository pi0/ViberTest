package com.viber.voip.stickers.a;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.viber.provider.i;
import com.viber.provider.messages.ViberMessagesProvider;
import com.viber.voip.ViberApplication;
import com.viber.voip.stickers.c.e;
import com.viber.voip.stickers.c.f;
import com.viber.voip.util.al;
import java.util.ArrayList;
import java.util.List;

public class a
{
  private static final String[] a = { "stickers._id", "generic_col_pos", "generic_row_pos", "column_span", "row_span", "package_id", "stickers.flags" };
  private static final String b = "SELECT " + TextUtils.join(", ", a) + " FROM " + "stickers_packages" + " LEFT JOIN " + "stickers" + " ON " + "stickers_packages" + "." + "_id" + " = " + "stickers" + "." + "package_id";
  private static final String c = b + " WHERE " + "stickers._id" + "=?";
  private static final String d = b + " WHERE " + "package_id" + "=? " + " ORDER BY stickers._id";
  
  public int a(f paramf)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("visibility", Integer.valueOf(paramf.b()));
    localContentValues.put("menu_position", Integer.valueOf(paramf.a()));
    SQLiteDatabase localSQLiteDatabase = a();
    String[] arrayOfString = new String[3];
    arrayOfString[0] = String.valueOf(paramf.e());
    arrayOfString[1] = String.valueOf(paramf.b());
    arrayOfString[2] = String.valueOf(paramf.a());
    return localSQLiteDatabase.update("stickers_packages", localContentValues, "_id = ? AND (visibility <> ? OR menu_position <> ?)", arrayOfString);
  }
  
  protected SQLiteDatabase a()
  {
    return ViberMessagesProvider.a(ViberApplication.getInstance());
  }
  
  public com.viber.voip.stickers.c.a a(int paramInt)
  {
    SQLiteDatabase localSQLiteDatabase = a();
    String[] arrayOfString1 = a;
    String[] arrayOfString2 = new String[1];
    arrayOfString2[0] = String.valueOf(paramInt);
    Cursor localCursor = localSQLiteDatabase.query("stickers", arrayOfString1, "stickers._id=?", arrayOfString2, null, null, null);
    boolean bool1 = al.b(localCursor);
    com.viber.voip.stickers.c.a locala = null;
    if (!bool1)
    {
      boolean bool2 = localCursor.moveToFirst();
      locala = null;
      if (bool2) {
        locala = a(localCursor);
      }
    }
    al.a(localCursor);
    return locala;
  }
  
  public com.viber.voip.stickers.c.a a(Cursor paramCursor)
  {
    com.viber.voip.stickers.c.a locala = new com.viber.voip.stickers.c.a(paramCursor.getInt(0), paramCursor.getInt(1), paramCursor.getInt(2), paramCursor.getInt(3), paramCursor.getInt(4), paramCursor.getInt(5), paramCursor.getInt(6));
    locala.a(true);
    return locala;
  }
  
  public void a(int paramInt, String paramString)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("package_name", paramString);
    SQLiteDatabase localSQLiteDatabase = a();
    String[] arrayOfString = new String[1];
    arrayOfString[0] = Integer.toString(paramInt);
    localSQLiteDatabase.update("stickers_packages", localContentValues, "_id = ?", arrayOfString);
  }
  
  public void a(com.viber.voip.stickers.c.a parama)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("_id", Integer.valueOf(parama.b));
    localContentValues.put("package_id", Integer.valueOf(parama.t));
    localContentValues.put("column_span", Integer.valueOf(parama.j));
    localContentValues.put("row_span", Integer.valueOf(parama.k));
    localContentValues.put("generic_col_pos", Integer.valueOf(parama.d));
    localContentValues.put("generic_row_pos", Integer.valueOf(parama.e));
    localContentValues.put("flags", Integer.valueOf(parama.i()));
    if (parama.d())
    {
      SQLiteDatabase localSQLiteDatabase = a();
      String[] arrayOfString = new String[1];
      arrayOfString[0] = Integer.toString(parama.b);
      localSQLiteDatabase.update("stickers", localContentValues, "_id = ?", arrayOfString);
      return;
    }
    a().insert("stickers", null, localContentValues);
    parama.a(true);
  }
  
  public void a(e parame)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("_id", Integer.valueOf(parame.e()));
    localContentValues.put("package_name", parame.f());
    localContentValues.put("flags", Integer.valueOf(parame.m()));
    localContentValues.put("thumb_axis_shrink_factor", Float.valueOf(parame.l()));
    localContentValues.put("menu_position", Integer.valueOf(parame.a()));
    if (c(parame.e()))
    {
      SQLiteDatabase localSQLiteDatabase = a();
      String[] arrayOfString = new String[1];
      arrayOfString[0] = Integer.toString(parame.e());
      localSQLiteDatabase.update("stickers_packages", localContentValues, "_id = ?", arrayOfString);
      return;
    }
    a().insert("stickers_packages", null, localContentValues);
    parame.e(true);
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      a().delete("stickers", null, null);
      a().delete("stickers_packages", null, null);
      i.a(ViberApplication.getInstance(), a.class.getSimpleName(), "db/script_for_filling_stickers_table.sql", a());
      return;
    }
    a().delete("stickers", "package_id NOT IN ( 400, -1 )", null);
    a().delete("stickers_packages", "_id NOT IN ( 400)", null);
  }
  
  public List<com.viber.voip.stickers.c.a> b()
  {
    Cursor localCursor = a().query("stickers", a, null, null, null, null, "stickers._id");
    ArrayList localArrayList = new ArrayList();
    if ((!al.b(localCursor)) && (localCursor.moveToFirst())) {
      do
      {
        localArrayList.add(a(localCursor));
      } while (localCursor.moveToNext());
    }
    al.a(localCursor);
    return localArrayList;
  }
  
  public List<com.viber.voip.stickers.c.a> b(int paramInt)
  {
    SQLiteDatabase localSQLiteDatabase = a();
    String str = d;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramInt);
    Cursor localCursor = localSQLiteDatabase.rawQuery(str, arrayOfString);
    ArrayList localArrayList = new ArrayList();
    if ((!al.b(localCursor)) && (localCursor.moveToFirst())) {
      do
      {
        localArrayList.add(a(localCursor));
      } while (localCursor.moveToNext());
    }
    al.a(localCursor);
    return localArrayList;
  }
  
  public List<e> c()
  {
    ArrayList localArrayList = new ArrayList();
    Cursor localCursor = a().query("stickers_packages", new String[] { "_id", "package_name", "flags", "thumb_axis_shrink_factor", "menu_position", "visibility" }, null, null, null, null, null);
    if ((!al.b(localCursor)) && (localCursor.moveToFirst())) {
      do
      {
        e locale = new e(localCursor.getInt(0), localCursor.getString(1));
        locale.a(localCursor.getInt(2));
        locale.a(localCursor.getFloat(3));
        locale.b(localCursor.getInt(4));
        locale.c(localCursor.getInt(5));
        locale.e(true);
        localArrayList.add(locale);
      } while (localCursor.moveToNext());
    }
    al.a(localCursor);
    return localArrayList;
  }
  
  public boolean c(int paramInt)
  {
    SQLiteDatabase localSQLiteDatabase = a();
    String[] arrayOfString1 = { "*" };
    String[] arrayOfString2 = new String[1];
    arrayOfString2[0] = String.valueOf(paramInt);
    Cursor localCursor = localSQLiteDatabase.query("stickers_packages", arrayOfString1, "stickers_packages._id=?", arrayOfString2, null, null, null);
    if ((localCursor != null) && (localCursor.getCount() > 0)) {}
    for (boolean bool = true;; bool = false)
    {
      al.a(localCursor);
      return bool;
    }
  }
  
  public int d(int paramInt)
  {
    SQLiteDatabase localSQLiteDatabase = a();
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramInt);
    return localSQLiteDatabase.delete("stickers_packages", "_id=?", arrayOfString);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.stickers.a.a
 * JD-Core Version:    0.7.0.1
 */
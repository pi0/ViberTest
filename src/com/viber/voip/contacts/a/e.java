package com.viber.voip.contacts.a;

import android.content.ContentResolver;
import android.database.CharArrayBuffer;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.net.Uri;
import android.os.Bundle;
import com.viber.provider.a;
import com.viber.voip.messages.orm.entity.Entity;

class e<T extends Entity>
  implements Cursor
{
  private boolean a;
  protected a b;
  protected int c = 0;
  
  public e(a parama)
  {
    this.b = parama;
  }
  
  private UnsupportedOperationException a()
  {
    return new UnsupportedOperationException("Operation not supported");
  }
  
  public void close()
  {
    this.a = true;
  }
  
  public void copyStringToBuffer(int paramInt, CharArrayBuffer paramCharArrayBuffer)
  {
    throw a();
  }
  
  public void deactivate()
  {
    throw a();
  }
  
  public byte[] getBlob(int paramInt)
  {
    throw a();
  }
  
  public int getColumnCount()
  {
    throw a();
  }
  
  public int getColumnIndex(String paramString)
  {
    throw a();
  }
  
  public int getColumnIndexOrThrow(String paramString)
  {
    throw a();
  }
  
  public String getColumnName(int paramInt)
  {
    throw a();
  }
  
  public String[] getColumnNames()
  {
    throw a();
  }
  
  public int getCount()
  {
    return this.b.getCount();
  }
  
  public double getDouble(int paramInt)
  {
    throw a();
  }
  
  public Bundle getExtras()
  {
    throw a();
  }
  
  public float getFloat(int paramInt)
  {
    throw a();
  }
  
  public int getInt(int paramInt)
  {
    throw a();
  }
  
  public long getLong(int paramInt)
  {
    throw a();
  }
  
  public int getPosition()
  {
    return this.c;
  }
  
  public short getShort(int paramInt)
  {
    throw a();
  }
  
  public String getString(int paramInt)
  {
    throw a();
  }
  
  public int getType(int paramInt)
  {
    return 0;
  }
  
  public boolean getWantsAllOnMoveCalls()
  {
    throw a();
  }
  
  public boolean isAfterLast()
  {
    return this.c == this.b.getCount();
  }
  
  public boolean isBeforeFirst()
  {
    return this.c == -1;
  }
  
  public boolean isClosed()
  {
    return this.a;
  }
  
  public boolean isFirst()
  {
    return this.c == 0;
  }
  
  public boolean isLast()
  {
    return this.c == -1 + this.b.getCount();
  }
  
  public boolean isNull(int paramInt)
  {
    throw a();
  }
  
  public boolean move(int paramInt)
  {
    return moveToPosition(paramInt + this.c);
  }
  
  public boolean moveToFirst()
  {
    this.c = 0;
    return true;
  }
  
  public boolean moveToLast()
  {
    this.c = (-1 + this.b.getCount());
    return true;
  }
  
  public boolean moveToNext()
  {
    return move(1);
  }
  
  public boolean moveToPosition(int paramInt)
  {
    if (paramInt >= this.b.getCount())
    {
      this.c = this.b.getCount();
      return false;
    }
    if (paramInt < 0)
    {
      this.c = -1;
      return false;
    }
    this.c = paramInt;
    return true;
  }
  
  public boolean moveToPrevious()
  {
    return move(-1);
  }
  
  public void registerContentObserver(ContentObserver paramContentObserver)
  {
    throw a();
  }
  
  public void registerDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    throw a();
  }
  
  public boolean requery()
  {
    throw a();
  }
  
  public Bundle respond(Bundle paramBundle)
  {
    throw a();
  }
  
  public void setNotificationUri(ContentResolver paramContentResolver, Uri paramUri)
  {
    throw a();
  }
  
  public void unregisterContentObserver(ContentObserver paramContentObserver)
  {
    throw a();
  }
  
  public void unregisterDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    throw a();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.contacts.a.e
 * JD-Core Version:    0.7.0.1
 */
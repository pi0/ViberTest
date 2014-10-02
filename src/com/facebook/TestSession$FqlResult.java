package com.facebook;

import com.facebook.model.GraphObject;
import com.facebook.model.GraphObjectList;

abstract interface TestSession$FqlResult
  extends GraphObject
{
  public abstract GraphObjectList<GraphObject> getFqlResultSet();
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.facebook.TestSession.FqlResult
 * JD-Core Version:    0.7.0.1
 */
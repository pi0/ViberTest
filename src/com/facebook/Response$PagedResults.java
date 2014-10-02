package com.facebook;

import com.facebook.model.GraphObject;
import com.facebook.model.GraphObjectList;

abstract interface Response$PagedResults
  extends GraphObject
{
  public abstract GraphObjectList<GraphObject> getData();
  
  public abstract Response.PagingInfo getPaging();
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.facebook.Response.PagedResults
 * JD-Core Version:    0.7.0.1
 */
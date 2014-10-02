package com.viber.voip.util;

public class fy
{
  private int[][] a;
  
  public fy(int[][] paramArrayOfInt)
  {
    this.a = paramArrayOfInt;
  }
  
  public int a(int paramInt)
  {
    int[][] arrayOfInt = this.a;
    int i = arrayOfInt.length;
    int j = 0;
    if (j < i)
    {
      int[] arrayOfInt1 = arrayOfInt[j];
      for (int k = 0;; k++)
      {
        if ((k >= arrayOfInt1.length) || (((paramInt & arrayOfInt1[k]) == 0) && (k < -1 + arrayOfInt1.length)))
        {
          j++;
          break;
        }
        if (k == -1 + arrayOfInt1.length) {
          return arrayOfInt1[(-1 + arrayOfInt1.length)];
        }
      }
    }
    return -1;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.fy
 * JD-Core Version:    0.7.0.1
 */
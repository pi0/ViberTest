package com.facebook;

 enum AuthorizationClient$Result$Code
{
  static
  {
    CANCEL = new Code("CANCEL", 1);
    ERROR = new Code("ERROR", 2);
    Code[] arrayOfCode = new Code[3];
    arrayOfCode[0] = SUCCESS;
    arrayOfCode[1] = CANCEL;
    arrayOfCode[2] = ERROR;
    $VALUES = arrayOfCode;
  }
  
  private AuthorizationClient$Result$Code() {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.facebook.AuthorizationClient.Result.Code
 * JD-Core Version:    0.7.0.1
 */
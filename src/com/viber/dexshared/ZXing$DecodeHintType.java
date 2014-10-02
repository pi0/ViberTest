package com.viber.dexshared;

public enum ZXing$DecodeHintType
{
  static
  {
    POSSIBLE_FORMATS = new DecodeHintType("POSSIBLE_FORMATS", 2);
    TRY_HARDER = new DecodeHintType("TRY_HARDER", 3);
    CHARACTER_SET = new DecodeHintType("CHARACTER_SET", 4);
    ALLOWED_LENGTHS = new DecodeHintType("ALLOWED_LENGTHS", 5);
    ASSUME_CODE_39_CHECK_DIGIT = new DecodeHintType("ASSUME_CODE_39_CHECK_DIGIT", 6);
    ASSUME_GS1 = new DecodeHintType("ASSUME_GS1", 7);
    RETURN_CODABAR_START_END = new DecodeHintType("RETURN_CODABAR_START_END", 8);
    NEED_RESULT_POINT_CALLBACK = new DecodeHintType("NEED_RESULT_POINT_CALLBACK", 9);
    ALLOWED_EAN_EXTENSIONS = new DecodeHintType("ALLOWED_EAN_EXTENSIONS", 10);
    DecodeHintType[] arrayOfDecodeHintType = new DecodeHintType[11];
    arrayOfDecodeHintType[0] = OTHER;
    arrayOfDecodeHintType[1] = PURE_BARCODE;
    arrayOfDecodeHintType[2] = POSSIBLE_FORMATS;
    arrayOfDecodeHintType[3] = TRY_HARDER;
    arrayOfDecodeHintType[4] = CHARACTER_SET;
    arrayOfDecodeHintType[5] = ALLOWED_LENGTHS;
    arrayOfDecodeHintType[6] = ASSUME_CODE_39_CHECK_DIGIT;
    arrayOfDecodeHintType[7] = ASSUME_GS1;
    arrayOfDecodeHintType[8] = RETURN_CODABAR_START_END;
    arrayOfDecodeHintType[9] = NEED_RESULT_POINT_CALLBACK;
    arrayOfDecodeHintType[10] = ALLOWED_EAN_EXTENSIONS;
    $VALUES = arrayOfDecodeHintType;
  }
  
  private ZXing$DecodeHintType() {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.dexshared.ZXing.DecodeHintType
 * JD-Core Version:    0.7.0.1
 */
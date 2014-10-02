package com.viber.voip.util;

import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.Mac;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

public class aj
{
  public static String a(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    for (int i = 0; i < paramArrayOfByte.length; i++) {
      localStringBuilder.append(Integer.toString(256 + (0xFF & paramArrayOfByte[i]), 16).substring(1));
    }
    return localStringBuilder.toString();
  }
  
  private static void a(StringBuffer paramStringBuffer, byte paramByte)
  {
    paramStringBuffer.append("0123456789ABCDEF".charAt(0xF & paramByte >> 4)).append("0123456789ABCDEF".charAt(paramByte & 0xF));
  }
  
  public static byte[] a(String paramString)
  {
    int i = paramString.length() / 2;
    byte[] arrayOfByte = new byte[i];
    for (int j = 0; j < i; j++) {
      arrayOfByte[j] = Integer.valueOf(paramString.substring(j * 2, 2 + j * 2), 16).byteValue();
    }
    return arrayOfByte;
  }
  
  public static byte[] a(String paramString1, String paramString2)
  {
    try
    {
      SecretKeySpec localSecretKeySpec = new SecretKeySpec(paramString2.getBytes("UTF-8"), "HmacSHA256");
      Mac localMac = Mac.getInstance("HmacSHA256");
      localMac.init(localSecretKeySpec);
      byte[] arrayOfByte = localMac.doFinal(paramString1.getBytes("UTF-8"));
      return arrayOfByte;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      throw new RuntimeException("Could not find the SHA256 algorithm. HMac conversion failed.", localNoSuchAlgorithmException);
    }
    catch (InvalidKeyException localInvalidKeyException)
    {
      throw new RuntimeException("Invalid key exception detected. HMac conversion failed.", localInvalidKeyException);
    }
    catch (IllegalStateException localIllegalStateException)
    {
      throw new RuntimeException("IIllegal state exception detected. HMac conversion failed.", localIllegalStateException);
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new RuntimeException("Unsuported encoding UTF-8. HMac conversion failed.", localUnsupportedEncodingException);
    }
  }
  
  private static byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    SecretKeySpec localSecretKeySpec = new SecretKeySpec(paramArrayOfByte1, "AES");
    Cipher localCipher = Cipher.getInstance("AES");
    localCipher.init(1, localSecretKeySpec);
    return localCipher.doFinal(paramArrayOfByte2);
  }
  
  public static String b(String paramString)
  {
    MessageDigest localMessageDigest = MessageDigest.getInstance("SHA1");
    localMessageDigest.reset();
    localMessageDigest.update(paramString.getBytes());
    return a(localMessageDigest.digest());
  }
  
  public static String b(String paramString1, String paramString2)
  {
    return b(a(c(paramString1.getBytes()), paramString2.getBytes()));
  }
  
  public static String b(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return "";
    }
    StringBuffer localStringBuffer = new StringBuffer(2 * paramArrayOfByte.length);
    for (int i = 0; i < paramArrayOfByte.length; i++) {
      a(localStringBuffer, paramArrayOfByte[i]);
    }
    return localStringBuffer.toString();
  }
  
  private static byte[] b(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    SecretKeySpec localSecretKeySpec = new SecretKeySpec(paramArrayOfByte1, "AES");
    Cipher localCipher = Cipher.getInstance("AES");
    localCipher.init(2, localSecretKeySpec);
    return localCipher.doFinal(paramArrayOfByte2);
  }
  
  public static String c(String paramString)
  {
    return new String(i.a(paramString, 0));
  }
  
  public static String c(String paramString1, String paramString2)
  {
    return new String(b(c(paramString1.getBytes()), a(paramString2)));
  }
  
  private static byte[] c(byte[] paramArrayOfByte)
  {
    KeyGenerator localKeyGenerator = KeyGenerator.getInstance("AES");
    SecureRandom localSecureRandom = SecureRandom.getInstance("SHA1PRNG", "Crypto");
    localSecureRandom.setSeed(paramArrayOfByte);
    localKeyGenerator.init(128, localSecureRandom);
    return localKeyGenerator.generateKey().getEncoded();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.aj
 * JD-Core Version:    0.7.0.1
 */
package org.acra;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.Reader;
import java.io.Writer;
import java.nio.charset.Charset;
import java.nio.charset.IllegalCharsetNameException;
import java.nio.charset.UnsupportedCharsetException;
import java.util.Collections;
import java.util.EnumMap;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public class CrashReportData
  extends EnumMap<ReportField, String>
{
  private static final int CONTINUE = 3;
  private static final int IGNORE = 5;
  private static final int KEY_DONE = 4;
  private static final int NONE = 0;
  private static final String PROP_DTD_NAME = "http://java.sun.com/dtd/properties.dtd";
  private static final int SLASH = 1;
  private static final int UNICODE = 2;
  private static String lineSeparator = "\n";
  private static final long serialVersionUID = 4112578634029874840L;
  protected CrashReportData defaults;
  
  public CrashReportData()
  {
    super(ReportField.class);
  }
  
  public CrashReportData(CrashReportData paramCrashReportData)
  {
    super(ReportField.class);
    this.defaults = paramCrashReportData;
  }
  
  private void dumpString(StringBuilder paramStringBuilder, String paramString, boolean paramBoolean)
  {
    int i;
    if ((!paramBoolean) && (paramString.length() < 0) && (paramString.charAt(0) == ' '))
    {
      paramStringBuilder.append("\\ ");
      i = 1;
    }
    for (;;)
    {
      if (i < paramString.length())
      {
        char c = paramString.charAt(i);
        switch (c)
        {
        case '\013': 
        default: 
          if (("\\#!=:".indexOf(c) >= 0) || ((paramBoolean) && (c == ' '))) {
            paramStringBuilder.append('\\');
          }
          if ((c >= ' ') && (c <= '~')) {
            paramStringBuilder.append(c);
          }
          break;
        }
        for (;;)
        {
          i++;
          break;
          paramStringBuilder.append("\\t");
          continue;
          paramStringBuilder.append("\\n");
          continue;
          paramStringBuilder.append("\\f");
          continue;
          paramStringBuilder.append("\\r");
          continue;
          String str = Integer.toHexString(c);
          paramStringBuilder.append("\\u");
          for (int j = 0; j < 4 - str.length(); j++) {
            paramStringBuilder.append("0");
          }
          paramStringBuilder.append(str);
        }
      }
      return;
      i = 0;
    }
  }
  
  private boolean isEbcdic(BufferedInputStream paramBufferedInputStream)
  {
    int i;
    do
    {
      i = (byte)paramBufferedInputStream.read();
      if ((i == -1) || (i == 35) || (i == 10) || (i == 61)) {
        return false;
      }
    } while (i != 21);
    return true;
  }
  
  private Enumeration<ReportField> keys()
  {
    return Collections.enumeration(keySet());
  }
  
  private String substitutePredefinedEntries(String paramString)
  {
    return paramString.replaceAll("&", "&amp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("'", "&apos;").replaceAll("\"", "&quot;");
  }
  
  public String getProperty(ReportField paramReportField)
  {
    String str = (String)super.get(paramReportField);
    if ((str == null) && (this.defaults != null)) {
      str = this.defaults.getProperty(paramReportField);
    }
    return str;
  }
  
  public String getProperty(ReportField paramReportField, String paramString)
  {
    String str = (String)super.get(paramReportField);
    if ((str == null) && (this.defaults != null)) {
      str = this.defaults.getProperty(paramReportField);
    }
    if (str == null) {
      return paramString;
    }
    return str;
  }
  
  public void list(PrintStream paramPrintStream)
  {
    if (paramPrintStream == null) {
      throw new NullPointerException();
    }
    StringBuilder localStringBuilder = new StringBuilder(80);
    Enumeration localEnumeration = keys();
    if (localEnumeration.hasMoreElements())
    {
      ReportField localReportField = (ReportField)localEnumeration.nextElement();
      localStringBuilder.append(localReportField);
      localStringBuilder.append('=');
      String str = (String)super.get(localReportField);
      for (CrashReportData localCrashReportData = this.defaults; str == null; localCrashReportData = localCrashReportData.defaults) {
        str = (String)localCrashReportData.get(localReportField);
      }
      if (str.length() > 40)
      {
        localStringBuilder.append(str.substring(0, 37));
        localStringBuilder.append("...");
      }
      for (;;)
      {
        paramPrintStream.println(localStringBuilder.toString());
        localStringBuilder.setLength(0);
        break;
        localStringBuilder.append(str);
      }
    }
  }
  
  public void list(PrintWriter paramPrintWriter)
  {
    if (paramPrintWriter == null) {
      throw new NullPointerException();
    }
    StringBuilder localStringBuilder = new StringBuilder(80);
    Enumeration localEnumeration = keys();
    if (localEnumeration.hasMoreElements())
    {
      ReportField localReportField = (ReportField)localEnumeration.nextElement();
      localStringBuilder.append(localReportField);
      localStringBuilder.append('=');
      String str = (String)super.get(localReportField);
      for (CrashReportData localCrashReportData = this.defaults; str == null; localCrashReportData = localCrashReportData.defaults) {
        str = (String)localCrashReportData.get(localReportField);
      }
      if (str.length() > 40)
      {
        localStringBuilder.append(str.substring(0, 37));
        localStringBuilder.append("...");
      }
      for (;;)
      {
        paramPrintWriter.println(localStringBuilder.toString());
        localStringBuilder.setLength(0);
        break;
        localStringBuilder.append(str);
      }
    }
  }
  
  public void load(InputStream paramInputStream)
  {
    if (paramInputStream == null) {
      try
      {
        throw new NullPointerException();
      }
      finally {}
    }
    BufferedInputStream localBufferedInputStream = new BufferedInputStream(paramInputStream);
    localBufferedInputStream.mark(2147483647);
    boolean bool = isEbcdic(localBufferedInputStream);
    localBufferedInputStream.reset();
    if (!bool) {
      load(new InputStreamReader(localBufferedInputStream, "ISO8859-1"));
    }
    for (;;)
    {
      return;
      load(new InputStreamReader(localBufferedInputStream));
    }
  }
  
  public void load(Reader paramReader)
  {
    Object localObject2;
    int i;
    int j;
    int k;
    int m;
    int n;
    int i1;
    char c1;
    int i25;
    int i5;
    label176:
    int i6;
    int i4;
    label222:
    int i10;
    int i11;
    label256:
    int i7;
    label276:
    int i19;
    for (;;)
    {
      BufferedReader localBufferedReader;
      int i2;
      try
      {
        localObject2 = new char[40];
        i = 0;
        j = -1;
        localBufferedReader = new BufferedReader(paramReader);
        k = 1;
        m = 0;
        n = 0;
        i1 = 0;
        i2 = localBufferedReader.read();
        if (i2 == -1)
        {
          if ((n != 2) || (i1 > 4)) {
            break label1076;
          }
          throw new IllegalArgumentException("luni.08");
        }
      }
      finally {}
      c1 = (char)i2;
      if (i == localObject2.length)
      {
        char[] arrayOfChar = new char[2 * localObject2.length];
        System.arraycopy(localObject2, 0, arrayOfChar, 0, i);
        localObject2 = arrayOfChar;
      }
      if (n == 2)
      {
        int i3 = Character.digit(c1, 16);
        if (i3 >= 0)
        {
          i25 = i3 + (m << 4);
          i5 = i1 + 1;
          if (i5 < 4)
          {
            i1 = i5;
            m = i25;
          }
        }
        else
        {
          if (i1 > 4) {
            break label502;
          }
          throw new IllegalArgumentException("luni.09");
          i6 = i + 1;
          localObject2[i] = ((char)i4);
          if ((c1 == '\n') || (c1 == '')) {
            break label513;
          }
          i = i6;
          i1 = i5;
          m = i4;
          n = 0;
          continue;
          int i12 = i + 1;
          localObject2[i] = i10;
          i = i12;
          i1 = i5;
          m = i4;
          n = i11;
          k = 0;
          continue;
          if (!Character.isWhitespace(c1)) {
            break label1054;
          }
          if (i7 != 3) {
            break label800;
          }
          i7 = 5;
          break label800;
          i19 = localBufferedReader.read();
          if (i19 != -1) {
            break label845;
          }
          int i22 = i5;
          m = i4;
          n = i7;
          i1 = i22;
          continue;
          label308:
          String str1 = new String((char[])localObject2, 0, i);
          put(Enum.valueOf(ReportField.class, str1.substring(0, j)), str1.substring(j));
          break label943;
        }
      }
    }
    for (;;)
    {
      if (j >= 0)
      {
        String str2 = new String((char[])localObject2, 0, i);
        ReportField localReportField = (ReportField)Enum.valueOf(ReportField.class, str2.substring(0, j));
        String str3 = str2.substring(j);
        if (n == 1) {
          str3 = str3 + "";
        }
        put(localReportField, str3);
      }
      return;
      label435:
      char c2 = c1;
      i11 = i7;
      i10 = c2;
      break label623;
      label450:
      int i9 = i5;
      m = i4;
      n = i7;
      i1 = i9;
      break;
      label469:
      int i15 = j;
      break label980;
      i4 = i25;
      break label176;
      int i26 = i1;
      i7 = n;
      i4 = m;
      i5 = i26;
      break label520;
      label502:
      i4 = m;
      i5 = i1;
      break label176;
      label513:
      i = i6;
      i7 = 0;
      label520:
      if (i7 == 1) {
        switch (c1)
        {
        default: 
          label612:
          char c3 = c1;
          i11 = 0;
          i10 = c3;
        }
      }
      for (;;)
      {
        label623:
        if (i11 != 4) {
          break label222;
        }
        j = i;
        i11 = 0;
        break label222;
        int i24 = i5;
        m = i4;
        n = 3;
        i1 = i24;
        break;
        int i23 = i5;
        m = i4;
        n = 5;
        i1 = i23;
        break;
        c1 = '\b';
        break label612;
        c1 = '\f';
        break label612;
        c1 = '\n';
        break label612;
        c1 = '\r';
        break label612;
        c1 = '\t';
        break label612;
        n = 2;
        i1 = 0;
        m = 0;
        break;
        switch (c1)
        {
        default: 
          if ((i == 0) || (i == j)) {
            break label450;
          }
          if (i7 == 5)
          {
            int i14 = i5;
            m = i4;
            n = i7;
            i1 = i14;
          }
          break;
        case '!': 
        case '#': 
          if (k == 0) {
            break label256;
          }
          break label276;
          int i20 = (char)i19;
          if ((i20 == 13) || (i20 == 10)) {
            break label450;
          }
          if (i20 != 133) {
            break label276;
          }
          int i21 = i5;
          m = i4;
          n = i7;
          i1 = i21;
          break;
        case '\n': 
          if (i7 == 3)
          {
            int i18 = i5;
            m = i4;
            n = 5;
            i1 = i18;
          }
          break;
        case '\r': 
        case '': 
          if ((i > 0) || ((i == 0) && (j == 0)))
          {
            if (j != -1) {
              break label308;
            }
            j = i;
            break label308;
          }
          j = -1;
          k = 1;
          int i17 = i5;
          m = i4;
          i1 = i17;
          i = 0;
          n = 0;
          break;
        case '\\': 
          if (i7 != 4) {
            break label469;
          }
          i15 = i;
          j = i15;
          int i16 = i5;
          m = i4;
          n = 1;
          i1 = i16;
          break;
        case ':': 
        case '=': 
          label800:
          label845:
          label980:
          if (j != -1) {
            break label256;
          }
          label943:
          j = i;
          int i8 = i5;
          m = i4;
          i1 = i8;
          n = 0;
          break;
          if (j == -1)
          {
            int i13 = i5;
            m = i4;
            n = 4;
            i1 = i13;
            break;
          }
          label1054:
          if ((i7 != 5) && (i7 != 3)) {
            break label435;
          }
          i10 = c1;
          i11 = 0;
        }
      }
      label1076:
      if ((j == -1) && (i > 0)) {
        j = i;
      }
    }
  }
  
  @Deprecated
  public void save(OutputStream paramOutputStream, String paramString)
  {
    try
    {
      store(paramOutputStream, paramString);
      return;
    }
    catch (IOException localIOException) {}
  }
  
  public Object setProperty(ReportField paramReportField, String paramString)
  {
    return put(paramReportField, paramString);
  }
  
  public void store(OutputStream paramOutputStream, String paramString)
  {
    try
    {
      StringBuilder localStringBuilder = new StringBuilder(200);
      OutputStreamWriter localOutputStreamWriter = new OutputStreamWriter(paramOutputStream, "ISO8859_1");
      if (paramString != null)
      {
        localOutputStreamWriter.write("#");
        localOutputStreamWriter.write(paramString);
        localOutputStreamWriter.write(lineSeparator);
      }
      Iterator localIterator = entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        dumpString(localStringBuilder, ((ReportField)localEntry.getKey()).toString(), true);
        localStringBuilder.append('=');
        dumpString(localStringBuilder, (String)localEntry.getValue(), false);
        localStringBuilder.append(lineSeparator);
        localOutputStreamWriter.write(localStringBuilder.toString());
        localStringBuilder.setLength(0);
      }
      localOutputStreamWriter.flush();
    }
    finally {}
  }
  
  public void store(Writer paramWriter, String paramString)
  {
    try
    {
      StringBuilder localStringBuilder = new StringBuilder(200);
      if (paramString != null)
      {
        paramWriter.write("#");
        paramWriter.write(paramString);
        paramWriter.write(lineSeparator);
      }
      Iterator localIterator = entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        dumpString(localStringBuilder, ((ReportField)localEntry.getKey()).toString(), true);
        localStringBuilder.append('=');
        dumpString(localStringBuilder, (String)localEntry.getValue(), false);
        localStringBuilder.append(lineSeparator);
        paramWriter.write(localStringBuilder.toString());
        localStringBuilder.setLength(0);
      }
      paramWriter.flush();
    }
    finally {}
  }
  
  public void storeToXML(OutputStream paramOutputStream, String paramString)
  {
    storeToXML(paramOutputStream, paramString, "UTF-8");
  }
  
  public void storeToXML(OutputStream paramOutputStream, String paramString1, String paramString2)
  {
    if ((paramOutputStream == null) || (paramString2 == null)) {
      try
      {
        throw new NullPointerException();
      }
      finally {}
    }
    try
    {
      String str4 = Charset.forName(paramString2).name();
      str1 = str4;
    }
    catch (IllegalCharsetNameException localIllegalCharsetNameException)
    {
      for (;;)
      {
        Iterator localIterator;
        System.out.println("Warning: encoding name " + paramString2 + " is illegal, using UTF-8 as default encoding");
        str1 = "UTF-8";
      }
    }
    catch (UnsupportedCharsetException localUnsupportedCharsetException)
    {
      PrintStream localPrintStream;
      for (;;)
      {
        System.out.println("Warning: encoding " + paramString2 + " is not supported, using UTF-8 as default encoding");
        String str1 = "UTF-8";
      }
      localPrintStream.println("</properties>");
      localPrintStream.flush();
    }
    localPrintStream = new PrintStream(paramOutputStream, false, str1);
    localPrintStream.print("<?xml version=\"1.0\" encoding=\"");
    localPrintStream.print(str1);
    localPrintStream.println("\"?>");
    localPrintStream.print("<!DOCTYPE properties SYSTEM \"");
    localPrintStream.print("http://java.sun.com/dtd/properties.dtd");
    localPrintStream.println("\">");
    localPrintStream.println("<properties>");
    if (paramString1 != null)
    {
      localPrintStream.print("<comment>");
      localPrintStream.print(substitutePredefinedEntries(paramString1));
      localPrintStream.println("</comment>");
    }
    localIterator = entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      String str2 = ((ReportField)localEntry.getKey()).toString();
      String str3 = (String)localEntry.getValue();
      localPrintStream.print("<entry key=\"");
      localPrintStream.print(substitutePredefinedEntries(str2));
      localPrintStream.print("\">");
      localPrintStream.print(substitutePredefinedEntries(str3));
      localPrintStream.println("</entry>");
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     org.acra.CrashReportData
 * JD-Core Version:    0.7.0.1
 */
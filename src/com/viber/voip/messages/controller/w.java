package com.viber.voip.messages.controller;

import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import java.util.HashMap;
import java.util.Map;

public class w
{
  private static final Map<String, Integer> a = new HashMap();
  
  static
  {
    a.put("answ_another_dev", Integer.valueOf(0));
    a.put("transferred", Integer.valueOf(0));
    a.put("incoming_call", Integer.valueOf(0));
    a.put("outgoing_call", Integer.valueOf(1));
    a.put("vo", Integer.valueOf(3));
    a.put("missed_call", Integer.valueOf(2));
  }
  
  public static boolean a(MessageEntityImpl paramMessageEntityImpl1, MessageEntityImpl paramMessageEntityImpl2)
  {
    return a.get(paramMessageEntityImpl1.getBody()) == a.get(paramMessageEntityImpl2.getBody());
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.controller.w
 * JD-Core Version:    0.7.0.1
 */
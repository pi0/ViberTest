package com.viber.voip.messages.controller;

import com.viber.voip.messages.orm.entity.impl.ConversationEntityImpl;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.messages.orm.entity.impl.ParticipantInfoEntityImpl;

public class cv
{
  public final boolean a;
  public final boolean b;
  public final boolean c;
  public final ConversationEntityImpl d;
  public final ParticipantInfoEntityImpl e;
  public final MessageEntityImpl f;
  
  public cv(boolean paramBoolean1, boolean paramBoolean2, ConversationEntityImpl paramConversationEntityImpl, ParticipantInfoEntityImpl paramParticipantInfoEntityImpl, MessageEntityImpl paramMessageEntityImpl, boolean paramBoolean3)
  {
    this.a = paramBoolean3;
    this.b = paramBoolean1;
    this.c = paramBoolean2;
    this.d = paramConversationEntityImpl;
    this.e = paramParticipantInfoEntityImpl;
    this.f = paramMessageEntityImpl;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.cv
 * JD-Core Version:    0.7.0.1
 */
package com.viber.jni;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PhoneControllerListener$61
  implements ControllerListener.ControllerListenerAction<PhoneControllerDelegate>
{
  PhoneControllerListener$61(PhoneControllerListener paramPhoneControllerListener, int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2, int paramInt3, CAddressBookEntry[] paramArrayOfCAddressBookEntry) {}
  
  public void execute(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    paramPhoneControllerDelegate.onAddressBook(this.val$context, this.val$genNum, this.val$clearAll, this.val$lastMsg, this.val$seq, this.val$addressBookEntries);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener.61
 * JD-Core Version:    0.7.0.1
 */
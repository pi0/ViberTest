package com.viber.service;

class l
  implements Runnable
{
  l(VoipConnectorService paramVoipConnectorService) {}
  
  public void run()
  {
    VoipConnectorService.a(this.a, "VersionCheck received , checking viber version...");
    VoipConnectorService.b(this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.service.l
 * JD-Core Version:    0.7.0.1
 */
package android.support.v4.content;

public enum ModernAsyncTask$Status
{
  static
  {
    FINISHED = new Status("FINISHED", 2);
    Status[] arrayOfStatus = new Status[3];
    arrayOfStatus[0] = PENDING;
    arrayOfStatus[1] = RUNNING;
    arrayOfStatus[2] = FINISHED;
    $VALUES = arrayOfStatus;
  }
  
  private ModernAsyncTask$Status() {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     android.support.v4.content.ModernAsyncTask.Status
 * JD-Core Version:    0.7.0.1
 */
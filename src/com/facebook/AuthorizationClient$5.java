package com.facebook;

import java.util.ArrayList;

class AuthorizationClient$5
  implements RequestBatch.Callback
{
  AuthorizationClient$5(AuthorizationClient paramAuthorizationClient, ArrayList paramArrayList1, AuthorizationClient.Result paramResult, ArrayList paramArrayList2) {}
  
  /* Error */
  public void onBatchCompleted(RequestBatch paramRequestBatch)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 19	com/facebook/AuthorizationClient$5:val$fbids	Ljava/util/ArrayList;
    //   4: invokevirtual 36	java/util/ArrayList:size	()I
    //   7: iconst_2
    //   8: if_icmpne +86 -> 94
    //   11: aload_0
    //   12: getfield 19	com/facebook/AuthorizationClient$5:val$fbids	Ljava/util/ArrayList;
    //   15: iconst_0
    //   16: invokevirtual 40	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   19: ifnull +75 -> 94
    //   22: aload_0
    //   23: getfield 19	com/facebook/AuthorizationClient$5:val$fbids	Ljava/util/ArrayList;
    //   26: iconst_1
    //   27: invokevirtual 40	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   30: ifnull +64 -> 94
    //   33: aload_0
    //   34: getfield 19	com/facebook/AuthorizationClient$5:val$fbids	Ljava/util/ArrayList;
    //   37: iconst_0
    //   38: invokevirtual 40	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   41: checkcast 42	java/lang/String
    //   44: aload_0
    //   45: getfield 19	com/facebook/AuthorizationClient$5:val$fbids	Ljava/util/ArrayList;
    //   48: iconst_1
    //   49: invokevirtual 40	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   52: invokevirtual 46	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   55: ifeq +39 -> 94
    //   58: aload_0
    //   59: getfield 21	com/facebook/AuthorizationClient$5:val$pendingResult	Lcom/facebook/AuthorizationClient$Result;
    //   62: getfield 52	com/facebook/AuthorizationClient$Result:token	Lcom/facebook/AccessToken;
    //   65: aload_0
    //   66: getfield 23	com/facebook/AuthorizationClient$5:val$tokenPermissions	Ljava/util/ArrayList;
    //   69: invokestatic 58	com/facebook/AccessToken:createFromTokenWithRefreshedPermissions	(Lcom/facebook/AccessToken;Ljava/util/List;)Lcom/facebook/AccessToken;
    //   72: invokestatic 62	com/facebook/AuthorizationClient$Result:createTokenResult	(Lcom/facebook/AccessToken;)Lcom/facebook/AuthorizationClient$Result;
    //   75: astore 5
    //   77: aload_0
    //   78: getfield 17	com/facebook/AuthorizationClient$5:this$0	Lcom/facebook/AuthorizationClient;
    //   81: aload 5
    //   83: invokevirtual 68	com/facebook/AuthorizationClient:complete	(Lcom/facebook/AuthorizationClient$Result;)V
    //   86: aload_0
    //   87: getfield 17	com/facebook/AuthorizationClient$5:this$0	Lcom/facebook/AuthorizationClient;
    //   90: invokestatic 72	com/facebook/AuthorizationClient:access$000	(Lcom/facebook/AuthorizationClient;)V
    //   93: return
    //   94: ldc 74
    //   96: aconst_null
    //   97: invokestatic 78	com/facebook/AuthorizationClient$Result:createErrorResult	(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;
    //   100: astore 4
    //   102: aload 4
    //   104: astore 5
    //   106: goto -29 -> 77
    //   109: astore_3
    //   110: aload_0
    //   111: getfield 17	com/facebook/AuthorizationClient$5:this$0	Lcom/facebook/AuthorizationClient;
    //   114: ldc 80
    //   116: aload_3
    //   117: invokevirtual 84	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   120: invokestatic 78	com/facebook/AuthorizationClient$Result:createErrorResult	(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;
    //   123: invokevirtual 68	com/facebook/AuthorizationClient:complete	(Lcom/facebook/AuthorizationClient$Result;)V
    //   126: aload_0
    //   127: getfield 17	com/facebook/AuthorizationClient$5:this$0	Lcom/facebook/AuthorizationClient;
    //   130: invokestatic 72	com/facebook/AuthorizationClient:access$000	(Lcom/facebook/AuthorizationClient;)V
    //   133: return
    //   134: astore_2
    //   135: aload_0
    //   136: getfield 17	com/facebook/AuthorizationClient$5:this$0	Lcom/facebook/AuthorizationClient;
    //   139: invokestatic 72	com/facebook/AuthorizationClient:access$000	(Lcom/facebook/AuthorizationClient;)V
    //   142: aload_2
    //   143: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	144	0	this	5
    //   0	144	1	paramRequestBatch	RequestBatch
    //   134	9	2	localObject1	Object
    //   109	8	3	localException	java.lang.Exception
    //   100	3	4	localResult	AuthorizationClient.Result
    //   75	30	5	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   0	77	109	java/lang/Exception
    //   77	86	109	java/lang/Exception
    //   94	102	109	java/lang/Exception
    //   0	77	134	finally
    //   77	86	134	finally
    //   94	102	134	finally
    //   110	126	134	finally
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.facebook.AuthorizationClient.5
 * JD-Core Version:    0.7.0.1
 */
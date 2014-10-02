.class public Lcom/viber/voip/util/fp;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/util/fe;


# direct methods
.method public constructor <init>(Lcom/viber/voip/util/fe;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/viber/voip/util/fp;->a:Lcom/viber/voip/util/fe;

    .line 192
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 193
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 203
    iget-object v0, p0, Lcom/viber/voip/util/fp;->a:Lcom/viber/voip/util/fe;

    iget-object v0, v0, Lcom/viber/voip/util/fe;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    .line 204
    if-nez v0, :cond_0

    .line 300
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Lcom/viber/voip/util/fo;

    .line 208
    iget v8, p1, Landroid/os/Message;->what:I

    .line 209
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 211
    packed-switch v1, :pswitch_data_0

    .line 284
    :goto_1
    iget-object v0, v7, Lcom/viber/voip/util/fo;->b:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 285
    iput-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 286
    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 296
    iget-boolean v1, v7, Lcom/viber/voip/util/fo;->k:Z

    if-nez v1, :cond_1

    iget-boolean v1, v7, Lcom/viber/voip/util/fo;->m:Z

    if-eqz v1, :cond_4

    .line 297
    :cond_1
    invoke-virtual {v0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    .line 215
    :pswitch_0
    :try_start_0
    invoke-static {}, Lcom/viber/voip/util/fe;->a()Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 216
    iget-object v1, v7, Lcom/viber/voip/util/fo;->a:Landroid/net/Uri;

    iget-object v2, v7, Lcom/viber/voip/util/fo;->c:[Ljava/lang/String;

    iget-object v3, v7, Lcom/viber/voip/util/fo;->d:Ljava/lang/String;

    iget-object v4, v7, Lcom/viber/voip/util/fo;->e:[Ljava/lang/String;

    iget-object v5, v7, Lcom/viber/voip/util/fo;->f:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 221
    if-eqz v0, :cond_2

    .line 222
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 224
    :cond_2
    iget-object v1, p0, Lcom/viber/voip/util/fp;->a:Lcom/viber/voip/util/fe;

    invoke-static {v1}, Lcom/viber/voip/util/fe;->a(Lcom/viber/voip/util/fe;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 232
    :goto_2
    iput-object v0, v7, Lcom/viber/voip/util/fo;->g:Ljava/lang/Object;

    goto :goto_1

    .line 225
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 226
    :goto_3
    invoke-static {}, Lcom/viber/voip/util/fe;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 229
    invoke-static {}, Lcom/viber/voip/util/fe;->a()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    move-object v0, v6

    goto :goto_2

    .line 236
    :pswitch_1
    iget-object v1, v7, Lcom/viber/voip/util/fo;->o:Lcom/viber/voip/util/fk;

    if-nez v1, :cond_3

    .line 237
    iget-object v1, v7, Lcom/viber/voip/util/fo;->a:Landroid/net/Uri;

    iget-object v2, v7, Lcom/viber/voip/util/fo;->i:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v7, Lcom/viber/voip/util/fo;->g:Ljava/lang/Object;

    goto :goto_1

    .line 240
    :cond_3
    :try_start_2
    iget-object v1, v7, Lcom/viber/voip/util/fo;->a:Landroid/net/Uri;

    iget-object v2, v7, Lcom/viber/voip/util/fo;->i:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v7, Lcom/viber/voip/util/fo;->g:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 241
    :catch_1
    move-exception v0

    .line 242
    iput-object v0, v7, Lcom/viber/voip/util/fo;->j:Ljava/lang/Exception;

    goto :goto_1

    .line 248
    :pswitch_2
    iget-object v1, v7, Lcom/viber/voip/util/fo;->a:Landroid/net/Uri;

    iget-object v2, v7, Lcom/viber/voip/util/fo;->i:Landroid/content/ContentValues;

    iget-object v3, v7, Lcom/viber/voip/util/fo;->d:Ljava/lang/String;

    iget-object v4, v7, Lcom/viber/voip/util/fo;->e:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v7, Lcom/viber/voip/util/fo;->g:Ljava/lang/Object;

    goto/16 :goto_1

    .line 253
    :pswitch_3
    iget-object v1, v7, Lcom/viber/voip/util/fo;->a:Landroid/net/Uri;

    iget-object v2, v7, Lcom/viber/voip/util/fo;->d:Ljava/lang/String;

    iget-object v3, v7, Lcom/viber/voip/util/fo;->e:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v7, Lcom/viber/voip/util/fo;->g:Ljava/lang/Object;

    goto/16 :goto_1

    .line 258
    :pswitch_4
    :try_start_3
    iget-object v1, v7, Lcom/viber/voip/util/fo;->d:Ljava/lang/String;

    iget-object v2, v7, Lcom/viber/voip/util/fo;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    iput-object v0, v7, Lcom/viber/voip/util/fo;->g:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 259
    :catch_2
    move-exception v0

    .line 260
    iput-object v0, v7, Lcom/viber/voip/util/fo;->j:Ljava/lang/Exception;

    goto/16 :goto_1

    .line 266
    :pswitch_5
    :try_start_4
    iget-object v1, v7, Lcom/viber/voip/util/fo;->a:Landroid/net/Uri;

    iget-object v2, v7, Lcom/viber/voip/util/fo;->u:[Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v7, Lcom/viber/voip/util/fo;->g:Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 267
    :catch_3
    move-exception v0

    .line 268
    iput-object v0, v7, Lcom/viber/voip/util/fo;->j:Ljava/lang/Exception;

    goto/16 :goto_1

    .line 274
    :pswitch_6
    :try_start_5
    iget-object v1, v7, Lcom/viber/voip/util/fo;->w:Lcom/viber/voip/util/fj;

    iget-object v3, v7, Lcom/viber/voip/util/fo;->h:Ljava/lang/Object;

    iget-object v4, p0, Lcom/viber/voip/util/fp;->a:Lcom/viber/voip/util/fe;

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, v7, Lcom/viber/voip/util/fo;->v:Ljava/lang/Object;

    aput-object v5, v6, v2

    move v2, v8

    move-object v5, v0

    invoke-interface/range {v1 .. v6}, Lcom/viber/voip/util/fj;->a(ILjava/lang/Object;Lcom/viber/voip/util/fe;Landroid/content/ContentResolver;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v7, Lcom/viber/voip/util/fo;->g:Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_1

    .line 275
    :catch_4
    move-exception v0

    .line 276
    iput-object v0, v7, Lcom/viber/voip/util/fo;->j:Ljava/lang/Exception;

    goto/16 :goto_1

    .line 299
    :cond_4
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 225
    :catch_5
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_3

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

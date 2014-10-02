.class public Lcom/viber/voip/util/fe;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field static final synthetic b:Z

.field private static final c:Ljava/lang/String;

.field private static volatile d:Ljava/util/concurrent/Semaphore;

.field private static volatile e:Ljava/util/concurrent/Semaphore;

.field private static h:Lcom/viber/voip/util/fe;


# instance fields
.field final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/os/Handler;

.field private g:Landroid/os/Handler;

.field private volatile i:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-class v0, Lcom/viber/voip/util/fe;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/viber/voip/util/fe;->b:Z

    .line 42
    const-class v0, Lcom/viber/voip/util/fe;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/util/fe;->c:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/viber/voip/util/fe;->d:Ljava/util/concurrent/Semaphore;

    .line 94
    new-instance v0, Lcom/viber/voip/util/fi;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/viber/voip/util/fi;-><init>(I)V

    sput-object v0, Lcom/viber/voip/util/fe;->e:Ljava/util/concurrent/Semaphore;

    .line 108
    const/4 v0, 0x0

    sput-object v0, Lcom/viber/voip/util/fe;->h:Lcom/viber/voip/util/fe;

    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .parameter

    .prologue
    .line 323
    sget-object v0, Lcom/viber/voip/dk;->i:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/util/fe;-><init>(Landroid/content/ContentResolver;Landroid/os/Handler;)V

    .line 324
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 319
    sget-object v0, Lcom/viber/voip/dk;->i:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/viber/voip/util/fe;-><init>(Landroid/content/ContentResolver;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 320
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 310
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 154
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/util/fe;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 311
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/viber/voip/util/fe;->a:Ljava/lang/ref/WeakReference;

    .line 312
    const-class v1, Lcom/viber/voip/util/fe;

    monitor-enter v1

    .line 313
    :try_start_0
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/util/fe;->a(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/util/fe;->f:Landroid/os/Handler;

    .line 314
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/util/fe;->g:Landroid/os/Handler;

    .line 315
    monitor-exit v1

    .line 316
    return-void

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a()Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/viber/voip/util/fe;->d:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/util/fe;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/viber/voip/util/fe;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private a(ILjava/lang/Object;Landroid/net/Uri;[Landroid/content/ContentValues;ILjava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 660
    return-void
.end method

.method private a(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 664
    return-void
.end method

.method private a(Lcom/viber/voip/util/fe;Landroid/os/Message;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 796
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/viber/voip/util/fo;

    .line 803
    iget v1, p2, Landroid/os/Message;->what:I

    .line 804
    iget v0, p2, Landroid/os/Message;->arg1:I

    .line 807
    packed-switch v0, :pswitch_data_0

    .line 867
    :cond_0
    :goto_0
    sget-object v0, Lcom/viber/voip/util/fe;->e:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 868
    return-void

    .line 809
    :pswitch_0
    iget-object v0, v6, Lcom/viber/voip/util/fo;->n:Lcom/viber/voip/util/fl;

    if-eqz v0, :cond_2

    .line 810
    iget-object v2, v6, Lcom/viber/voip/util/fo;->n:Lcom/viber/voip/util/fl;

    iget-object v3, v6, Lcom/viber/voip/util/fo;->h:Ljava/lang/Object;

    iget-object v0, v6, Lcom/viber/voip/util/fo;->g:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    invoke-interface {v2, v1, v3, v0}, Lcom/viber/voip/util/fl;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 814
    :goto_1
    iget-object v0, v6, Lcom/viber/voip/util/fo;->g:Ljava/lang/Object;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/viber/voip/util/fe;->d:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object v0, p0, Lcom/viber/voip/util/fe;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 815
    :cond_1
    iget-boolean v0, v6, Lcom/viber/voip/util/fo;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/viber/voip/util/fo;->g:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    invoke-static {v0}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    goto :goto_0

    .line 812
    :cond_2
    iget-object v2, v6, Lcom/viber/voip/util/fo;->h:Ljava/lang/Object;

    iget-object v0, v6, Lcom/viber/voip/util/fo;->g:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    invoke-virtual {p1, v1, v2, v0}, Lcom/viber/voip/util/fe;->a(ILjava/lang/Object;Landroid/database/Cursor;)V

    goto :goto_1

    .line 819
    :pswitch_1
    iget-object v0, v6, Lcom/viber/voip/util/fo;->o:Lcom/viber/voip/util/fk;

    if-eqz v0, :cond_3

    .line 820
    iget-object v2, v6, Lcom/viber/voip/util/fo;->o:Lcom/viber/voip/util/fk;

    iget-object v3, v6, Lcom/viber/voip/util/fo;->h:Ljava/lang/Object;

    iget-object v0, v6, Lcom/viber/voip/util/fo;->g:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    iget-object v4, v6, Lcom/viber/voip/util/fo;->j:Ljava/lang/Exception;

    invoke-interface {v2, v1, v3, v0, v4}, Lcom/viber/voip/util/fk;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/Exception;)V

    goto :goto_0

    .line 822
    :cond_3
    iget-object v2, v6, Lcom/viber/voip/util/fo;->h:Ljava/lang/Object;

    iget-object v0, v6, Lcom/viber/voip/util/fo;->g:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p1, v1, v2, v0}, Lcom/viber/voip/util/fe;->a(ILjava/lang/Object;Landroid/net/Uri;)V

    goto :goto_0

    .line 827
    :pswitch_2
    iget-object v0, v6, Lcom/viber/voip/util/fo;->p:Lcom/viber/voip/util/fn;

    if-eqz v0, :cond_4

    .line 828
    iget-object v0, v6, Lcom/viber/voip/util/fo;->p:Lcom/viber/voip/util/fn;

    iget-object v2, v6, Lcom/viber/voip/util/fo;->h:Ljava/lang/Object;

    iget-object v3, v6, Lcom/viber/voip/util/fo;->a:Landroid/net/Uri;

    iget-object v4, v6, Lcom/viber/voip/util/fo;->j:Ljava/lang/Exception;

    iget-object v5, v6, Lcom/viber/voip/util/fo;->g:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/viber/voip/util/fn;->onUpdateComplete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/Exception;I)V

    goto :goto_0

    .line 830
    :cond_4
    iget-object v2, v6, Lcom/viber/voip/util/fo;->h:Ljava/lang/Object;

    iget-object v0, v6, Lcom/viber/voip/util/fo;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v2, v0}, Lcom/viber/voip/util/fe;->a(ILjava/lang/Object;I)V

    goto :goto_0

    .line 835
    :pswitch_3
    iget-object v0, v6, Lcom/viber/voip/util/fo;->q:Lcom/viber/voip/util/fh;

    if-eqz v0, :cond_5

    .line 836
    iget-object v2, v6, Lcom/viber/voip/util/fo;->q:Lcom/viber/voip/util/fh;

    iget-object v3, v6, Lcom/viber/voip/util/fo;->h:Ljava/lang/Object;

    iget-object v0, v6, Lcom/viber/voip/util/fo;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v1, v3, v0}, Lcom/viber/voip/util/fh;->onDeleteComplete(ILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 838
    :cond_5
    iget-object v2, v6, Lcom/viber/voip/util/fo;->h:Ljava/lang/Object;

    iget-object v0, v6, Lcom/viber/voip/util/fo;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v2, v0}, Lcom/viber/voip/util/fe;->b(ILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 843
    :pswitch_4
    iget-object v0, v6, Lcom/viber/voip/util/fo;->r:Lcom/viber/voip/util/ff;

    if-eqz v0, :cond_6

    .line 844
    iget-object v0, v6, Lcom/viber/voip/util/fo;->r:Lcom/viber/voip/util/ff;

    iget-object v2, v6, Lcom/viber/voip/util/fo;->h:Ljava/lang/Object;

    iget-object v3, v6, Lcom/viber/voip/util/fo;->t:Ljava/util/ArrayList;

    iget-object v4, v6, Lcom/viber/voip/util/fo;->g:Ljava/lang/Object;

    check-cast v4, [Landroid/content/ContentProviderResult;

    check-cast v4, [Landroid/content/ContentProviderResult;

    iget-object v5, v6, Lcom/viber/voip/util/fo;->j:Ljava/lang/Exception;

    invoke-interface/range {v0 .. v5}, Lcom/viber/voip/util/ff;->a(ILjava/lang/Object;Ljava/util/List;[Landroid/content/ContentProviderResult;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 846
    :cond_6
    iget-object v2, v6, Lcom/viber/voip/util/fo;->h:Ljava/lang/Object;

    iget-object v3, v6, Lcom/viber/voip/util/fo;->t:Ljava/util/ArrayList;

    iget-object v0, v6, Lcom/viber/voip/util/fo;->g:Ljava/lang/Object;

    check-cast v0, [Landroid/content/ContentProviderResult;

    move-object v4, v0

    check-cast v4, [Landroid/content/ContentProviderResult;

    iget-object v5, v6, Lcom/viber/voip/util/fo;->j:Ljava/lang/Exception;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/util/fe;->a(ILjava/lang/Object;Ljava/util/List;[Landroid/content/ContentProviderResult;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 851
    :pswitch_5
    iget-object v0, v6, Lcom/viber/voip/util/fo;->s:Lcom/viber/voip/util/fg;

    if-eqz v0, :cond_7

    .line 852
    iget-object v0, v6, Lcom/viber/voip/util/fo;->s:Lcom/viber/voip/util/fg;

    iget-object v2, v6, Lcom/viber/voip/util/fo;->h:Ljava/lang/Object;

    iget-object v3, v6, Lcom/viber/voip/util/fo;->a:Landroid/net/Uri;

    iget-object v4, v6, Lcom/viber/voip/util/fo;->u:[Landroid/content/ContentValues;

    iget-object v5, v6, Lcom/viber/voip/util/fo;->g:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v6, Lcom/viber/voip/util/fo;->j:Ljava/lang/Exception;

    invoke-interface/range {v0 .. v6}, Lcom/viber/voip/util/fg;->a(ILjava/lang/Object;Landroid/net/Uri;[Landroid/content/ContentValues;ILjava/lang/Exception;)V

    goto/16 :goto_0

    .line 854
    :cond_7
    iget-object v2, v6, Lcom/viber/voip/util/fo;->h:Ljava/lang/Object;

    iget-object v3, v6, Lcom/viber/voip/util/fo;->a:Landroid/net/Uri;

    iget-object v4, v6, Lcom/viber/voip/util/fo;->u:[Landroid/content/ContentValues;

    iget-object v0, v6, Lcom/viber/voip/util/fo;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v6, Lcom/viber/voip/util/fo;->j:Ljava/lang/Exception;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/util/fe;->a(ILjava/lang/Object;Landroid/net/Uri;[Landroid/content/ContentValues;ILjava/lang/Exception;)V

    goto/16 :goto_0

    .line 859
    :pswitch_6
    iget-object v0, v6, Lcom/viber/voip/util/fo;->w:Lcom/viber/voip/util/fj;

    if-eqz v0, :cond_8

    .line 860
    iget-object v0, v6, Lcom/viber/voip/util/fo;->w:Lcom/viber/voip/util/fj;

    iget-object v2, v6, Lcom/viber/voip/util/fo;->h:Ljava/lang/Object;

    iget-object v3, v6, Lcom/viber/voip/util/fo;->g:Ljava/lang/Object;

    iget-object v4, v6, Lcom/viber/voip/util/fo;->j:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/viber/voip/util/fj;->a(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 862
    :cond_8
    iget-object v0, v6, Lcom/viber/voip/util/fo;->h:Ljava/lang/Object;

    iget-object v2, v6, Lcom/viber/voip/util/fo;->g:Ljava/lang/Object;

    iget-object v3, v6, Lcom/viber/voip/util/fo;->j:Ljava/lang/Exception;

    invoke-direct {p1, v1, v0, v2, v3}, Lcom/viber/voip/util/fe;->a(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 807
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

.method static synthetic a(Lcom/viber/voip/util/fe;Lcom/viber/voip/util/fe;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/util/fe;->a(Lcom/viber/voip/util/fe;Landroid/os/Message;)V

    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lcom/viber/voip/util/fe;
    .locals 3
    .parameter

    .prologue
    .line 157
    const-class v1, Lcom/viber/voip/util/fe;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/viber/voip/util/fe;->h:Lcom/viber/voip/util/fe;

    if-nez v0, :cond_0

    new-instance v0, Lcom/viber/voip/util/fe;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/viber/voip/util/fe;-><init>(Landroid/content/ContentResolver;)V

    sput-object v0, Lcom/viber/voip/util/fe;->h:Lcom/viber/voip/util/fe;

    .line 158
    :cond_0
    sget-object v0, Lcom/viber/voip/util/fe;->h:Lcom/viber/voip/util/fe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/viber/voip/util/fe;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 327
    new-instance v0, Lcom/viber/voip/util/fp;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/util/fp;-><init>(Lcom/viber/voip/util/fe;Landroid/os/Looper;)V

    return-object v0
.end method

.method protected a(ILjava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 632
    return-void
.end method

.method protected a(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 604
    invoke-static {p3}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 605
    iget-object v0, p0, Lcom/viber/voip/util/fe;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 606
    return-void
.end method

.method protected a(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 619
    return-void
.end method

.method public final a(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Lcom/viber/voip/util/fk;ZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 443
    iget-object v0, p0, Lcom/viber/voip/util/fe;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 444
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 446
    new-instance v1, Lcom/viber/voip/util/fo;

    invoke-direct {v1}, Lcom/viber/voip/util/fo;-><init>()V

    .line 447
    iput-object p0, v1, Lcom/viber/voip/util/fo;->b:Landroid/os/Handler;

    .line 448
    iput-object p3, v1, Lcom/viber/voip/util/fo;->a:Landroid/net/Uri;

    .line 449
    iput-object p2, v1, Lcom/viber/voip/util/fo;->h:Ljava/lang/Object;

    .line 450
    iput-object p4, v1, Lcom/viber/voip/util/fo;->i:Landroid/content/ContentValues;

    .line 451
    iput-object p5, v1, Lcom/viber/voip/util/fo;->o:Lcom/viber/voip/util/fk;

    .line 452
    iput-boolean p6, v1, Lcom/viber/voip/util/fo;->k:Z

    .line 453
    iput-boolean p7, v1, Lcom/viber/voip/util/fo;->m:Z

    .line 454
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 456
    iget-boolean v1, v1, Lcom/viber/voip/util/fo;->k:Z

    if-nez v1, :cond_0

    if-eqz p7, :cond_1

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/util/fe;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 461
    :goto_0
    return-void

    .line 459
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/util/fe;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final a(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Lcom/viber/voip/util/fn;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 532
    const/4 v8, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/viber/voip/util/fe;->a(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Lcom/viber/voip/util/fn;Z)V

    .line 533
    return-void
.end method

.method public final a(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Lcom/viber/voip/util/fn;Z)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 525
    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/viber/voip/util/fe;->a(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Lcom/viber/voip/util/fn;ZZ)V

    .line 526
    return-void
.end method

.method public final a(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Lcom/viber/voip/util/fn;ZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 499
    iget-object v0, p0, Lcom/viber/voip/util/fe;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 500
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 502
    new-instance v1, Lcom/viber/voip/util/fo;

    invoke-direct {v1}, Lcom/viber/voip/util/fo;-><init>()V

    .line 503
    iput-object p0, v1, Lcom/viber/voip/util/fo;->b:Landroid/os/Handler;

    .line 504
    iput-object p3, v1, Lcom/viber/voip/util/fo;->a:Landroid/net/Uri;

    .line 505
    iput-object p2, v1, Lcom/viber/voip/util/fo;->h:Ljava/lang/Object;

    .line 506
    iput-object p4, v1, Lcom/viber/voip/util/fo;->i:Landroid/content/ContentValues;

    .line 507
    iput-object p5, v1, Lcom/viber/voip/util/fo;->d:Ljava/lang/String;

    .line 508
    iput-object p6, v1, Lcom/viber/voip/util/fo;->e:[Ljava/lang/String;

    .line 509
    iput-object p7, v1, Lcom/viber/voip/util/fo;->p:Lcom/viber/voip/util/fn;

    .line 510
    iput-boolean p8, v1, Lcom/viber/voip/util/fo;->k:Z

    .line 511
    iput-boolean p9, v1, Lcom/viber/voip/util/fo;->m:Z

    .line 512
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 514
    iget-boolean v1, v1, Lcom/viber/voip/util/fo;->k:Z

    if-nez v1, :cond_0

    if-eqz p9, :cond_1

    .line 515
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/util/fe;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 519
    :goto_0
    return-void

    .line 517
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/util/fe;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final a(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/viber/voip/util/fh;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 586
    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/util/fe;->a(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/viber/voip/util/fh;Z)V

    .line 587
    return-void
.end method

.method public final a(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/viber/voip/util/fh;Z)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 580
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/viber/voip/util/fe;->a(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/viber/voip/util/fh;ZZ)V

    .line 581
    return-void
.end method

.method public final a(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/viber/voip/util/fh;ZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 555
    iget-object v0, p0, Lcom/viber/voip/util/fe;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 556
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 558
    new-instance v1, Lcom/viber/voip/util/fo;

    invoke-direct {v1}, Lcom/viber/voip/util/fo;-><init>()V

    .line 559
    iput-object p0, v1, Lcom/viber/voip/util/fo;->b:Landroid/os/Handler;

    .line 560
    iput-object p3, v1, Lcom/viber/voip/util/fo;->a:Landroid/net/Uri;

    .line 561
    iput-object p2, v1, Lcom/viber/voip/util/fo;->h:Ljava/lang/Object;

    .line 562
    iput-object p4, v1, Lcom/viber/voip/util/fo;->d:Ljava/lang/String;

    .line 563
    iput-object p5, v1, Lcom/viber/voip/util/fo;->e:[Ljava/lang/String;

    .line 564
    iput-object p6, v1, Lcom/viber/voip/util/fo;->q:Lcom/viber/voip/util/fh;

    .line 565
    iput-boolean p7, v1, Lcom/viber/voip/util/fo;->k:Z

    .line 566
    iput-boolean p8, v1, Lcom/viber/voip/util/fo;->m:Z

    .line 567
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 569
    iget-boolean v1, v1, Lcom/viber/voip/util/fo;->k:Z

    if-nez v1, :cond_0

    if-eqz p8, :cond_1

    .line 570
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/util/fe;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 574
    :goto_0
    return-void

    .line 572
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/util/fe;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public a(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/fl;Z)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 399
    const/4 v10, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/viber/voip/util/fe;->a(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/fl;ZZ)V

    .line 400
    return-void
.end method

.method public a(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/fl;ZZ)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 391
    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Lcom/viber/voip/util/fe;->a(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/fl;ZZZ)V

    .line 392
    return-void
.end method

.method public a(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/fl;ZZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 361
    iget-object v0, p0, Lcom/viber/voip/util/fe;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 362
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 364
    new-instance v1, Lcom/viber/voip/util/fo;

    invoke-direct {v1}, Lcom/viber/voip/util/fo;-><init>()V

    .line 365
    iput-object p0, v1, Lcom/viber/voip/util/fo;->b:Landroid/os/Handler;

    .line 366
    iput-object p3, v1, Lcom/viber/voip/util/fo;->a:Landroid/net/Uri;

    .line 367
    iput-object p4, v1, Lcom/viber/voip/util/fo;->c:[Ljava/lang/String;

    .line 368
    iput-object p5, v1, Lcom/viber/voip/util/fo;->d:Ljava/lang/String;

    .line 369
    iput-object p6, v1, Lcom/viber/voip/util/fo;->e:[Ljava/lang/String;

    .line 370
    iput-object p7, v1, Lcom/viber/voip/util/fo;->f:Ljava/lang/String;

    .line 371
    iput-object p2, v1, Lcom/viber/voip/util/fo;->h:Ljava/lang/Object;

    .line 372
    iput-object p8, v1, Lcom/viber/voip/util/fo;->n:Lcom/viber/voip/util/fl;

    .line 373
    iput-boolean p9, v1, Lcom/viber/voip/util/fo;->k:Z

    .line 374
    iput-boolean p10, v1, Lcom/viber/voip/util/fo;->l:Z

    .line 375
    iput-boolean p11, v1, Lcom/viber/voip/util/fo;->m:Z

    .line 376
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 378
    iget-boolean v1, v1, Lcom/viber/voip/util/fo;->k:Z

    if-nez v1, :cond_0

    if-eqz p11, :cond_1

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/util/fe;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 383
    :goto_0
    return-void

    .line 381
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/util/fe;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected a(ILjava/lang/Object;Ljava/util/List;[Landroid/content/ContentProviderResult;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;[",
            "Landroid/content/ContentProviderResult;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 653
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/Object;Ljava/util/List;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 696
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/util/fe;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/util/List;Lcom/viber/voip/util/ff;)V

    .line 697
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/Object;Ljava/util/List;Lcom/viber/voip/util/ff;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/viber/voip/util/ff;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 692
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/util/fe;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/util/List;Lcom/viber/voip/util/ff;ZZ)V

    .line 693
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/Object;Ljava/util/List;Lcom/viber/voip/util/ff;ZZ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/viber/voip/util/ff;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 671
    iget-object v0, p0, Lcom/viber/voip/util/fe;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 672
    const/4 v0, 0x5

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 674
    new-instance v2, Lcom/viber/voip/util/fo;

    invoke-direct {v2}, Lcom/viber/voip/util/fo;-><init>()V

    .line 675
    iput-object p0, v2, Lcom/viber/voip/util/fo;->b:Landroid/os/Handler;

    .line 676
    iput-object p3, v2, Lcom/viber/voip/util/fo;->h:Ljava/lang/Object;

    .line 677
    iput-object p2, v2, Lcom/viber/voip/util/fo;->d:Ljava/lang/String;

    .line 678
    if-eqz p4, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v0, v2, Lcom/viber/voip/util/fo;->t:Ljava/util/ArrayList;

    .line 679
    iput-object p5, v2, Lcom/viber/voip/util/fo;->r:Lcom/viber/voip/util/ff;

    .line 680
    iput-boolean p6, v2, Lcom/viber/voip/util/fo;->k:Z

    .line 681
    iput-boolean p7, v2, Lcom/viber/voip/util/fo;->m:Z

    .line 682
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 684
    iget-boolean v0, v2, Lcom/viber/voip/util/fo;->k:Z

    if-nez v0, :cond_0

    if-eqz p7, :cond_2

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/util/fe;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 689
    :goto_1
    return-void

    .line 678
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 687
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/util/fe;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method protected b(ILjava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 645
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 876
    sget-object v0, Lcom/viber/voip/util/fe;->e:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 877
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/viber/voip/util/fo;

    iget-boolean v0, v0, Lcom/viber/voip/util/fo;->k:Z

    if-eqz v0, :cond_0

    .line 878
    new-instance v0, Lcom/viber/voip/util/fm;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/util/fm;-><init>(Lcom/viber/voip/util/fe;Landroid/os/Message;)V

    .line 879
    iget-object v1, p0, Lcom/viber/voip/util/fe;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 883
    :goto_0
    return-void

    .line 881
    :cond_0
    invoke-direct {p0, p0, p1}, Lcom/viber/voip/util/fe;->a(Lcom/viber/voip/util/fe;Landroid/os/Message;)V

    goto :goto_0
.end method

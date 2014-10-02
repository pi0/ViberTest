.class Lcom/viber/voip/registration/dh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/d/d;


# instance fields
.field final synthetic a:[Lcom/viber/voip/registration/df;

.field final synthetic b:[Ljava/io/IOException;

.field final synthetic c:Ljava/util/concurrent/CountDownLatch;

.field final synthetic d:Lcom/viber/voip/registration/dg;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/dg;[Lcom/viber/voip/registration/df;[Ljava/io/IOException;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/viber/voip/registration/dh;->d:Lcom/viber/voip/registration/dg;

    iput-object p2, p0, Lcom/viber/voip/registration/dh;->a:[Lcom/viber/voip/registration/df;

    iput-object p3, p0, Lcom/viber/voip/registration/dh;->b:[Ljava/io/IOException;

    iput-object p4, p0, Lcom/viber/voip/registration/dh;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/viber/voip/registration/dh;->b:[Ljava/io/IOException;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Data receive failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 54
    iget-object v0, p0, Lcom/viber/voip/registration/dh;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 55
    return-void
.end method

.method public a(Ljava/io/InputStream;)V
    .locals 3
    .parameter

    .prologue
    .line 42
    :try_start_0
    new-instance v0, Lcom/viber/voip/registration/de;

    const-string/jumbo v1, "UpdatePhoneResponse"

    invoke-direct {v0, v1}, Lcom/viber/voip/registration/de;-><init>(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/viber/voip/registration/dh;->a:[Lcom/viber/voip/registration/df;

    const/4 v2, 0x0

    invoke-virtual {v0, p1}, Lcom/viber/voip/registration/de;->a(Ljava/io/InputStream;)Lcom/viber/voip/registration/df;

    move-result-object v0

    aput-object v0, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    iget-object v0, p0, Lcom/viber/voip/registration/dh;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 49
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    :try_start_1
    iget-object v1, p0, Lcom/viber/voip/registration/dh;->b:[Ljava/io/IOException;

    const/4 v2, 0x0

    aput-object v0, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    iget-object v0, p0, Lcom/viber/voip/registration/dh;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/viber/voip/registration/dh;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

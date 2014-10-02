.class Lcom/viber/voip/registration/ck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/d/d;


# instance fields
.field final synthetic a:[Lcom/viber/voip/registration/df;

.field final synthetic b:[Ljava/io/IOException;

.field final synthetic c:Ljava/util/concurrent/CountDownLatch;

.field final synthetic d:Lcom/viber/voip/registration/cj;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/cj;[Lcom/viber/voip/registration/df;[Ljava/io/IOException;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/viber/voip/registration/ck;->d:Lcom/viber/voip/registration/cj;

    iput-object p2, p0, Lcom/viber/voip/registration/ck;->a:[Lcom/viber/voip/registration/df;

    iput-object p3, p0, Lcom/viber/voip/registration/ck;->b:[Ljava/io/IOException;

    iput-object p4, p0, Lcom/viber/voip/registration/ck;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/viber/voip/registration/ck;->b:[Ljava/io/IOException;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Data receive failed, statusCode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 74
    iget-object v0, p0, Lcom/viber/voip/registration/ck;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 75
    return-void
.end method

.method public a(Ljava/io/InputStream;)V
    .locals 3
    .parameter

    .prologue
    .line 62
    :try_start_0
    new-instance v0, Lcom/viber/voip/registration/de;

    const-string/jumbo v1, "RegisterUserResponse"

    invoke-direct {v0, v1}, Lcom/viber/voip/registration/de;-><init>(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/viber/voip/registration/ck;->a:[Lcom/viber/voip/registration/df;

    const/4 v2, 0x0

    invoke-virtual {v0, p1}, Lcom/viber/voip/registration/de;->a(Ljava/io/InputStream;)Lcom/viber/voip/registration/df;

    move-result-object v0

    aput-object v0, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    iget-object v0, p0, Lcom/viber/voip/registration/ck;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 69
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    :try_start_1
    iget-object v1, p0, Lcom/viber/voip/registration/ck;->b:[Ljava/io/IOException;

    const/4 v2, 0x0

    aput-object v0, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    iget-object v0, p0, Lcom/viber/voip/registration/ck;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/viber/voip/registration/ck;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

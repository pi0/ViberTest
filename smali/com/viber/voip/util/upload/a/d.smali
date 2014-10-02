.class Lcom/viber/voip/util/upload/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/util/upload/a/c;


# direct methods
.method constructor <init>(Lcom/viber/voip/util/upload/a/c;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/viber/voip/util/upload/a/d;->a:Lcom/viber/voip/util/upload/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 246
    :goto_0
    :try_start_0
    new-instance v0, Lcom/viber/voip/util/upload/a/f;

    iget-object v1, p0, Lcom/viber/voip/util/upload/a/d;->a:Lcom/viber/voip/util/upload/a/c;

    iget-object v2, p0, Lcom/viber/voip/util/upload/a/d;->a:Lcom/viber/voip/util/upload/a/c;

    invoke-static {v2}, Lcom/viber/voip/util/upload/a/c;->a(Lcom/viber/voip/util/upload/a/c;)Ljava/net/ServerSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/util/upload/a/f;-><init>(Lcom/viber/voip/util/upload/a/c;Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 250
    return-void
.end method

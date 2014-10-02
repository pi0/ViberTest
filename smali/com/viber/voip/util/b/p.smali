.class Lcom/viber/voip/util/b/p;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/util/b/o;


# direct methods
.method private constructor <init>(Lcom/viber/voip/util/b/o;Ljava/io/OutputStream;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 859
    iput-object p1, p0, Lcom/viber/voip/util/b/p;->a:Lcom/viber/voip/util/b/o;

    .line 860
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 861
    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/util/b/o;Ljava/io/OutputStream;Lcom/viber/voip/util/b/n;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 858
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/util/b/p;-><init>(Lcom/viber/voip/util/b/o;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 881
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/util/b/p;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 885
    :goto_0
    return-void

    .line 882
    :catch_0
    move-exception v0

    .line 883
    iget-object v0, p0, Lcom/viber/voip/util/b/p;->a:Lcom/viber/voip/util/b/o;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/viber/voip/util/b/o;->a(Lcom/viber/voip/util/b/o;Z)Z

    goto :goto_0
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 889
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/util/b/p;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    :goto_0
    return-void

    .line 890
    :catch_0
    move-exception v0

    .line 891
    iget-object v0, p0, Lcom/viber/voip/util/b/p;->a:Lcom/viber/voip/util/b/o;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/viber/voip/util/b/o;->a(Lcom/viber/voip/util/b/o;Z)Z

    goto :goto_0
.end method

.method public write(I)V
    .locals 2
    .parameter

    .prologue
    .line 865
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/util/b/p;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    :goto_0
    return-void

    .line 866
    :catch_0
    move-exception v0

    .line 867
    iget-object v0, p0, Lcom/viber/voip/util/b/p;->a:Lcom/viber/voip/util/b/o;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/viber/voip/util/b/o;->a(Lcom/viber/voip/util/b/o;Z)Z

    goto :goto_0
.end method

.method public write([BII)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 873
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/util/b/p;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    :goto_0
    return-void

    .line 874
    :catch_0
    move-exception v0

    .line 875
    iget-object v0, p0, Lcom/viber/voip/util/b/p;->a:Lcom/viber/voip/util/b/o;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/viber/voip/util/b/o;->a(Lcom/viber/voip/util/b/o;Z)Z

    goto :goto_0
.end method

.class final Lcom/viber/voip/util/upload/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# instance fields
.field final synthetic a:[Landroid/media/MediaScannerConnection;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>([Landroid/media/MediaScannerConnection;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/viber/voip/util/upload/o;->a:[Landroid/media/MediaScannerConnection;

    iput-object p2, p0, Lcom/viber/voip/util/upload/o;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 88
    const-string/jumbo v0, "onMediaScannerConnected()"

    invoke-static {v0}, Lcom/viber/voip/util/upload/n;->d(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/viber/voip/util/upload/o;->a:[Landroid/media/MediaScannerConnection;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/viber/voip/util/upload/o;->a:[Landroid/media/MediaScannerConnection;

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/viber/voip/util/upload/o;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onScanCompleted(): s: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " , uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/upload/n;->d(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/viber/voip/util/upload/o;->a:[Landroid/media/MediaScannerConnection;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/viber/voip/util/upload/o;->a:[Landroid/media/MediaScannerConnection;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 100
    :cond_0
    return-void
.end method

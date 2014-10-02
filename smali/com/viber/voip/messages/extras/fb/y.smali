.class Lcom/viber/voip/messages/extras/fb/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:J

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/viber/voip/messages/extras/fb/s;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/fb/s;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 605
    iput-object p1, p0, Lcom/viber/voip/messages/extras/fb/y;->g:Lcom/viber/voip/messages/extras/fb/s;

    iput-object p2, p0, Lcom/viber/voip/messages/extras/fb/y;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/messages/extras/fb/y;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/viber/voip/messages/extras/fb/y;->c:Ljava/lang/String;

    iput-wide p5, p0, Lcom/viber/voip/messages/extras/fb/y;->d:J

    iput-object p7, p0, Lcom/viber/voip/messages/extras/fb/y;->e:Ljava/lang/String;

    iput-object p8, p0, Lcom/viber/voip/messages/extras/fb/y;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    .line 608
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 609
    const-string/jumbo v0, "message"

    iget-object v1, p0, Lcom/viber/voip/messages/extras/fb/y;->a:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/y;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/fb/y;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 612
    if-eqz v9, :cond_0

    .line 613
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/y;->g:Lcom/viber/voip/messages/extras/fb/s;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/s;->c(Lcom/viber/voip/messages/extras/fb/s;)Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 615
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 616
    const-string/jumbo v0, "picture"

    iget-object v2, p0, Lcom/viber/voip/messages/extras/fb/y;->g:Lcom/viber/voip/messages/extras/fb/s;

    invoke-static {v2, v1}, Lcom/viber/voip/messages/extras/fb/s;->a(Lcom/viber/voip/messages/extras/fb/s;Ljava/io/File;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 618
    new-instance v0, Lcom/viber/voip/messages/extras/fb/ai;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/fb/y;->g:Lcom/viber/voip/messages/extras/fb/s;

    iget-wide v2, p0, Lcom/viber/voip/messages/extras/fb/y;->d:J

    iget-object v4, p0, Lcom/viber/voip/messages/extras/fb/y;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/viber/voip/messages/extras/fb/y;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/viber/voip/messages/extras/fb/y;->c:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/messages/extras/fb/ai;-><init>(Lcom/viber/voip/messages/extras/fb/s;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 620
    iget-object v1, p0, Lcom/viber/voip/messages/extras/fb/y;->g:Lcom/viber/voip/messages/extras/fb/s;

    iget-wide v2, p0, Lcom/viber/voip/messages/extras/fb/y;->d:J

    iget-object v4, p0, Lcom/viber/voip/messages/extras/fb/y;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/viber/voip/messages/extras/fb/y;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/viber/voip/messages/extras/fb/y;->c:Ljava/lang/String;

    invoke-static/range {v1 .. v7}, Lcom/viber/voip/messages/extras/fb/s;->a(Lcom/viber/voip/messages/extras/fb/s;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 622
    iget-object v1, p0, Lcom/viber/voip/messages/extras/fb/y;->g:Lcom/viber/voip/messages/extras/fb/s;

    iget-object v2, p0, Lcom/viber/voip/messages/extras/fb/y;->b:Landroid/content/Context;

    const-string/jumbo v4, "me/photos"

    move-object v3, v8

    move-object v5, v0

    move-object v6, v9

    invoke-static/range {v1 .. v6}, Lcom/viber/voip/messages/extras/fb/s;->a(Lcom/viber/voip/messages/extras/fb/s;Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Lcom/viber/voip/messages/extras/fb/ai;Landroid/net/Uri;)V

    .line 624
    :cond_0
    return-void
.end method

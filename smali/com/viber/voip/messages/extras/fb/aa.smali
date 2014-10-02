.class Lcom/viber/voip/messages/extras/fb/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Landroid/content/Context;

.field final synthetic g:Lcom/viber/voip/messages/extras/fb/s;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/fb/s;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 703
    iput-object p1, p0, Lcom/viber/voip/messages/extras/fb/aa;->g:Lcom/viber/voip/messages/extras/fb/s;

    iput-object p2, p0, Lcom/viber/voip/messages/extras/fb/aa;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/messages/extras/fb/aa;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/viber/voip/messages/extras/fb/aa;->c:J

    iput-object p6, p0, Lcom/viber/voip/messages/extras/fb/aa;->d:Ljava/lang/String;

    iput-object p7, p0, Lcom/viber/voip/messages/extras/fb/aa;->e:Ljava/lang/String;

    iput-object p8, p0, Lcom/viber/voip/messages/extras/fb/aa;->f:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 706
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 707
    const-string/jumbo v0, "message"

    iget-object v1, p0, Lcom/viber/voip/messages/extras/fb/aa;->a:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/aa;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 709
    const-string/jumbo v0, "link"

    iget-object v1, p0, Lcom/viber/voip/messages/extras/fb/aa;->b:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    :cond_0
    new-instance v0, Lcom/viber/voip/messages/extras/fb/ai;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/fb/aa;->g:Lcom/viber/voip/messages/extras/fb/s;

    iget-wide v2, p0, Lcom/viber/voip/messages/extras/fb/aa;->c:J

    iget-object v4, p0, Lcom/viber/voip/messages/extras/fb/aa;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/viber/voip/messages/extras/fb/aa;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/viber/voip/messages/extras/fb/aa;->e:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/messages/extras/fb/ai;-><init>(Lcom/viber/voip/messages/extras/fb/s;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 713
    iget-object v1, p0, Lcom/viber/voip/messages/extras/fb/aa;->g:Lcom/viber/voip/messages/extras/fb/s;

    iget-wide v2, p0, Lcom/viber/voip/messages/extras/fb/aa;->c:J

    iget-object v4, p0, Lcom/viber/voip/messages/extras/fb/aa;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/viber/voip/messages/extras/fb/aa;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/viber/voip/messages/extras/fb/aa;->e:Ljava/lang/String;

    invoke-static/range {v1 .. v7}, Lcom/viber/voip/messages/extras/fb/s;->a(Lcom/viber/voip/messages/extras/fb/s;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 715
    iget-object v1, p0, Lcom/viber/voip/messages/extras/fb/aa;->g:Lcom/viber/voip/messages/extras/fb/s;

    iget-object v2, p0, Lcom/viber/voip/messages/extras/fb/aa;->f:Landroid/content/Context;

    const-string/jumbo v4, "me/feed"

    const/4 v6, 0x0

    move-object v3, v8

    move-object v5, v0

    invoke-static/range {v1 .. v6}, Lcom/viber/voip/messages/extras/fb/s;->a(Lcom/viber/voip/messages/extras/fb/s;Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Lcom/viber/voip/messages/extras/fb/ai;Landroid/net/Uri;)V

    .line 716
    return-void
.end method

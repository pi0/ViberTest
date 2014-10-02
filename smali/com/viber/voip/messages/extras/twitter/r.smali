.class Lcom/viber/voip/messages/extras/twitter/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:J

.field final synthetic c:Landroid/net/Uri;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/viber/voip/messages/extras/twitter/l;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/twitter/l;Landroid/app/Activity;JLandroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/viber/voip/messages/extras/twitter/r;->e:Lcom/viber/voip/messages/extras/twitter/l;

    iput-object p2, p0, Lcom/viber/voip/messages/extras/twitter/r;->a:Landroid/app/Activity;

    iput-wide p3, p0, Lcom/viber/voip/messages/extras/twitter/r;->b:J

    iput-object p5, p0, Lcom/viber/voip/messages/extras/twitter/r;->c:Landroid/net/Uri;

    iput-object p6, p0, Lcom/viber/voip/messages/extras/twitter/r;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 270
    new-instance v0, Lcom/viber/voip/messages/extras/twitter/w;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/twitter/r;->e:Lcom/viber/voip/messages/extras/twitter/l;

    iget-object v2, p0, Lcom/viber/voip/messages/extras/twitter/r;->a:Landroid/app/Activity;

    iget-wide v3, p0, Lcom/viber/voip/messages/extras/twitter/r;->b:J

    iget-object v5, p0, Lcom/viber/voip/messages/extras/twitter/r;->c:Landroid/net/Uri;

    iget-object v6, p0, Lcom/viber/voip/messages/extras/twitter/r;->d:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/extras/twitter/w;-><init>(Lcom/viber/voip/messages/extras/twitter/l;Landroid/app/Activity;JLandroid/net/Uri;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/extras/twitter/w;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 271
    return-void
.end method

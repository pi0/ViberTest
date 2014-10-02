.class Lcom/viber/voip/messages/extras/twitter/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/viber/voip/messages/extras/twitter/l;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/twitter/l;Landroid/app/Activity;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/viber/voip/messages/extras/twitter/q;->e:Lcom/viber/voip/messages/extras/twitter/l;

    iput-object p2, p0, Lcom/viber/voip/messages/extras/twitter/q;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/viber/voip/messages/extras/twitter/q;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/viber/voip/messages/extras/twitter/q;->c:J

    iput-object p6, p0, Lcom/viber/voip/messages/extras/twitter/q;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 260
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/q;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/twitter/q;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 261
    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/q;->e:Lcom/viber/voip/messages/extras/twitter/l;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/twitter/q;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/viber/voip/messages/extras/twitter/q;->c:J

    iget-object v5, p0, Lcom/viber/voip/messages/extras/twitter/q;->d:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/messages/extras/twitter/l;->a(Lcom/viber/voip/messages/extras/twitter/l;Landroid/app/Activity;JLandroid/net/Uri;Ljava/lang/String;)V

    .line 262
    :cond_0
    return-void
.end method

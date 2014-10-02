.class Lcom/viber/voip/messages/extras/twitter/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/viber/voip/messages/extras/twitter/l;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/twitter/l;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/viber/voip/messages/extras/twitter/n;->c:Lcom/viber/voip/messages/extras/twitter/l;

    iput-object p2, p0, Lcom/viber/voip/messages/extras/twitter/n;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/viber/voip/messages/extras/twitter/n;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 207
    new-instance v0, Lcom/viber/voip/messages/extras/twitter/x;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/twitter/n;->c:Lcom/viber/voip/messages/extras/twitter/l;

    iget-object v2, p0, Lcom/viber/voip/messages/extras/twitter/n;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/viber/voip/messages/extras/twitter/n;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/viber/voip/messages/extras/twitter/x;-><init>(Lcom/viber/voip/messages/extras/twitter/l;Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/extras/twitter/x;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 208
    return-void
.end method

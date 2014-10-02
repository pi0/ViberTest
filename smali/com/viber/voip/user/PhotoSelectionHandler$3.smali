.class Lcom/viber/voip/user/PhotoSelectionHandler$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/user/PhotoSelectionHandler;

.field final synthetic val$uriFromIntent:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/viber/voip/user/PhotoSelectionHandler;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/viber/voip/user/PhotoSelectionHandler$3;->this$0:Lcom/viber/voip/user/PhotoSelectionHandler;

    iput-object p2, p0, Lcom/viber/voip/user/PhotoSelectionHandler$3;->val$uriFromIntent:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionHandler$3;->val$uriFromIntent:Landroid/net/Uri;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionHandler$3;->this$0:Lcom/viber/voip/user/PhotoSelectionHandler;

    iget-object v0, v0, Lcom/viber/voip/user/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/viber/voip/user/PhotoSelectionHandler$3;->val$uriFromIntent:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/h;->d(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionHandler$3;->this$0:Lcom/viber/voip/user/PhotoSelectionHandler;

    iget-object v0, v0, Lcom/viber/voip/user/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1}, Lcom/viber/voip/messages/extras/image/g;->a(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x300e

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 138
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionHandler$3;->val$uriFromIntent:Landroid/net/Uri;

    move-object v1, v0

    goto :goto_0
.end method

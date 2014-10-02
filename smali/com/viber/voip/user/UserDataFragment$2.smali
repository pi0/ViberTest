.class Lcom/viber/voip/user/UserDataFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/user/FacebookDetailsListener;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/user/UserDataFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/user/UserDataFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/viber/voip/user/UserDataFragment$2;->this$0:Lcom/viber/voip/user/UserDataFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Lcom/viber/voip/user/FacebookDetails;)V
    .locals 2
    .parameter

    .prologue
    .line 242
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->e:Lcom/viber/voip/a/w;

    invoke-virtual {v1}, Lcom/viber/voip/a/w;->c()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 243
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment$2;->this$0:Lcom/viber/voip/user/UserDataFragment;

    invoke-virtual {p1}, Lcom/viber/voip/user/FacebookDetails;->getUserName()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/viber/voip/user/UserDataFragment;->setDisplayName(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/viber/voip/user/UserDataFragment;->access$1100(Lcom/viber/voip/user/UserDataFragment;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p1}, Lcom/viber/voip/user/FacebookDetails;->getUserPhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 245
    sget-object v1, Lcom/viber/voip/messages/extras/image/l;->a:Lcom/viber/voip/messages/extras/image/l;

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/graphics/Bitmap;Lcom/viber/voip/messages/extras/image/l;)Landroid/net/Uri;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_0

    .line 247
    iget-object v1, p0, Lcom/viber/voip/user/UserDataFragment$2;->this$0:Lcom/viber/voip/user/UserDataFragment;

    invoke-virtual {v1, v0}, Lcom/viber/voip/user/UserDataFragment;->setImage(Landroid/net/Uri;)V

    .line 248
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment$2;->this$0:Lcom/viber/voip/user/UserDataFragment;

    iget-object v1, p0, Lcom/viber/voip/user/UserDataFragment$2;->this$0:Lcom/viber/voip/user/UserDataFragment;

    #getter for: Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;
    invoke-static {v1}, Lcom/viber/voip/user/UserDataFragment;->access$600(Lcom/viber/voip/user/UserDataFragment;)Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    move-result-object v1

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->buttonSave:Landroid/widget/Button;
    invoke-static {v1}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$100(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/user/UserDataFragment;->onClick(Landroid/view/View;)V

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment$2;->this$0:Lcom/viber/voip/user/UserDataFragment;

    const v1, 0x7f0c0448

    invoke-virtual {v0, v1}, Lcom/viber/voip/user/UserDataFragment;->showToast(I)V

    goto :goto_0
.end method

.method public onLoadingCanceled()V
    .locals 0

    .prologue
    .line 273
    return-void
.end method

.method public onLoadingError(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 264
    const-string/jumbo v0, "Error validating access token"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment$2;->this$0:Lcom/viber/voip/user/UserDataFragment;

    #calls: Lcom/viber/voip/user/UserDataFragment;->onFacebookDetailsButtonClicked()V
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFragment;->access$1200(Lcom/viber/voip/user/UserDataFragment;)V

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment$2;->this$0:Lcom/viber/voip/user/UserDataFragment;

    const v1, 0x7f0c0449

    invoke-virtual {v0, v1}, Lcom/viber/voip/user/UserDataFragment;->showToast(I)V

    goto :goto_0
.end method

.class Lcom/viber/voip/messages/conversation/publicgroup/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/location/Address;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/viber/voip/messages/conversation/publicgroup/q;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/publicgroup/q;Landroid/location/Address;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/r;->c:Lcom/viber/voip/messages/conversation/publicgroup/q;

    iput-object p2, p0, Lcom/viber/voip/messages/conversation/publicgroup/r;->a:Landroid/location/Address;

    iput-object p3, p0, Lcom/viber/voip/messages/conversation/publicgroup/r;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getLocation onAddressReady address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/r;->a:Landroid/location/Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",addressString:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/r;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/r;->c:Lcom/viber/voip/messages/conversation/publicgroup/q;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/q;->b:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->c:Lcom/viber/voip/widget/TextViewWithDescription;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/r;->c:Lcom/viber/voip/messages/conversation/publicgroup/q;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/q;->b:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 322
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/r;->c:Lcom/viber/voip/messages/conversation/publicgroup/q;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/q;->b:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/r;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->b(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 323
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/r;->a:Landroid/location/Address;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/r;->c:Lcom/viber/voip/messages/conversation/publicgroup/q;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/q;->b:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/r;->a:Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->c(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 328
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/r;->c:Lcom/viber/voip/messages/conversation/publicgroup/q;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/q;->b:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->c:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0, v2}, Lcom/viber/voip/widget/TextViewWithDescription;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 329
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/r;->c:Lcom/viber/voip/messages/conversation/publicgroup/q;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/q;->b:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/r;->c:Lcom/viber/voip/messages/conversation/publicgroup/q;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/publicgroup/q;->b:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->b(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;Z)V

    .line 330
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/r;->c:Lcom/viber/voip/messages/conversation/publicgroup/q;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/q;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/r;->c:Lcom/viber/voip/messages/conversation/publicgroup/q;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/q;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "countryName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/r;->c:Lcom/viber/voip/messages/conversation/publicgroup/q;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/q;->b:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/r;->c:Lcom/viber/voip/messages/conversation/publicgroup/q;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/publicgroup/q;->a:Landroid/os/Bundle;

    const-string/jumbo v2, "countryName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;Ljava/lang/String;)V

    .line 340
    :goto_1
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/r;->c:Lcom/viber/voip/messages/conversation/publicgroup/q;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/q;->b:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-static {v0, v2}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->c(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/r;->c:Lcom/viber/voip/messages/conversation/publicgroup/q;

    iget-object v1, v0, Lcom/viber/voip/messages/conversation/publicgroup/q;->b:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/r;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/r;->c:Lcom/viber/voip/messages/conversation/publicgroup/q;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/q;->b:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    const v2, 0x7f0c0420

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v1, v0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/r;->b:Ljava/lang/String;

    goto :goto_2

    .line 338
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/r;->c:Lcom/viber/voip/messages/conversation/publicgroup/q;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/q;->b:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;Ljava/lang/String;)V

    goto :goto_1
.end method

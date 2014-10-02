.class Lcom/viber/voip/messages/conversation/publicgroup/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/extras/image/e;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 521
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/w;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/viber/voip/messages/ui/media/SendMediaDataContainer;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 524
    return-void
.end method

.method public a(I[Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 528
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 529
    invoke-static {}, Lcom/viber/voip/messages/extras/image/b;->a()Lcom/viber/voip/messages/extras/image/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/extras/image/b;->b(Lcom/viber/voip/messages/extras/image/e;)V

    .line 531
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/w;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    aget-object v1, p2, v2

    iget-object v1, v1, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->b:Landroid/net/Uri;

    iput-object v1, v0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->n:Landroid/net/Uri;

    .line 532
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/w;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->h:Lcom/viber/voip/widget/AvatarView;

    invoke-virtual {v0, v2}, Lcom/viber/voip/widget/AvatarView;->setIsMandatory(Z)V

    .line 533
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/w;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->h:Lcom/viber/voip/widget/AvatarView;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/w;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->n:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/AvatarView;->setImageURI(Landroid/net/Uri;)V

    .line 534
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/w;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->h:Lcom/viber/voip/widget/AvatarView;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/w;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/AvatarView;->setTextOverlayColor(I)V

    .line 535
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/w;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->h:Lcom/viber/voip/widget/AvatarView;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/w;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/AvatarView;->setCaptionTextColor(I)V

    .line 536
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/w;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->h:Lcom/viber/voip/widget/AvatarView;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/w;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0682

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/AvatarView;->setCaption(Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/w;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/w;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->b(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;Z)V

    .line 539
    :cond_0
    return-void
.end method

.class Lcom/viber/voip/messages/conversation/publicgroup/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/b/al;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/z;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Landroid/graphics/Bitmap;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/z;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->h:Lcom/viber/voip/widget/AvatarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/AvatarView;->setCaptionVisibility(Z)V

    .line 172
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/z;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->h:Lcom/viber/voip/widget/AvatarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/AvatarView;->setIsMandatory(Z)V

    .line 173
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/z;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->h:Lcom/viber/voip/widget/AvatarView;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/z;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/AvatarView;->setTextOverlayColor(I)V

    .line 174
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/z;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->h:Lcom/viber/voip/widget/AvatarView;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/z;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/AvatarView;->setCaptionTextColor(I)V

    .line 175
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/z;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->h:Lcom/viber/voip/widget/AvatarView;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/z;->a:Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/publicgroup/EditPublicGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0682

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/AvatarView;->setCaption(Ljava/lang/String;)V

    .line 176
    return-void
.end method

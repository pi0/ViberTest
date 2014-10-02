.class Lcom/viber/voip/messages/conversation/ui/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/viber/voip/messages/conversation/ui/ak;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/ak;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1086
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/al;->b:Lcom/viber/voip/messages/conversation/ui/ak;

    iput-object p2, p0, Lcom/viber/voip/messages/conversation/ui/al;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/al;->b:Lcom/viber/voip/messages/conversation/ui/ak;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ak;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/al;->b:Lcom/viber/voip/messages/conversation/ui/ak;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ak;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1091
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1092
    const-string/jumbo v2, "extra_calls"

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/al;->a:Ljava/util/List;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1094
    new-instance v0, Lcom/viber/voip/messages/conversation/ui/g;

    invoke-direct {v0}, Lcom/viber/voip/messages/conversation/ui/g;-><init>()V

    .line 1095
    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/ui/g;->setArguments(Landroid/os/Bundle;)V

    .line 1096
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/al;->b:Lcom/viber/voip/messages/conversation/ui/ak;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/ui/ak;->a:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/conversation/ui/g;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1098
    :cond_0
    return-void
.end method

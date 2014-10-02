.class Lcom/viber/voip/contacts/ui/bo;
.super Lcom/viber/voip/messages/adapters/k;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/ui/bm;


# direct methods
.method public constructor <init>(Lcom/viber/voip/contacts/ui/bm;Landroid/content/Context;Lcom/viber/voip/messages/conversation/i;Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/viber/voip/messages/conversation/i",
            "<",
            "Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;",
            ">;",
            "Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 214
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/bo;->a:Lcom/viber/voip/contacts/ui/bm;

    .line 215
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/viber/voip/messages/adapters/k;-><init>(Landroid/content/Context;Lcom/viber/voip/messages/conversation/i;Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;Z)V

    .line 216
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 219
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/messages/adapters/k;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 222
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/adapters/a/a/b;

    .line 223
    if-nez p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/adapters/a/a/b;->a(Z)V

    .line 224
    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/a/a/b;->a()V

    .line 225
    return-object v2

    .line 223
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

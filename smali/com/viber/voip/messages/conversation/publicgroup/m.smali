.class Lcom/viber/voip/messages/conversation/publicgroup/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lit/sephiroth/android/library/widget/y;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/m;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lit/sephiroth/android/library/widget/u;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lit/sephiroth/android/library/widget/u",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/m;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/m;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)Lcom/viber/voip/messages/conversation/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/af;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;Ljava/util/ArrayList;)V

    .line 237
    return-void
.end method

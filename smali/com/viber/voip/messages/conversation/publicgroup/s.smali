.class Lcom/viber/voip/messages/conversation/publicgroup/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/s;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 356
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/s;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a(Z)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 357
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/s;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->b()V

    .line 359
    :cond_0
    return-void
.end method

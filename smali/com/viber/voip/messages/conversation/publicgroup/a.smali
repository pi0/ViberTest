.class Lcom/viber/voip/messages/conversation/publicgroup/a;
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
    .line 202
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/a;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/a;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v1

    iget-object v1, v1, Lcom/viber/voip/bd;->R:Ljava/lang/String;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/a;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    const v3, 0x7f0c06c3

    invoke-virtual {v2, v3}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ui/GenericWebViewActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void
.end method

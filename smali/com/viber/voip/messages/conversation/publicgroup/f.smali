.class Lcom/viber/voip/messages/conversation/publicgroup/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 760
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/f;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 764
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/f;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-static {v0, v3}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->b(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;Z)Z

    .line 765
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/f;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a(Ljava/lang/String;Z)V

    .line 766
    return v3
.end method

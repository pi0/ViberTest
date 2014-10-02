.class Lcom/viber/voip/messages/conversation/publicgroup/e;
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
    .line 746
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/e;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

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
    .line 750
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/e;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->c(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 751
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 752
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/e;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    const-string/jumbo v2, " "

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/widget/TextViewWithDescription;->setText(Ljava/lang/String;)V

    .line 753
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/e;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/e;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v1}, Lcom/viber/voip/widget/TextViewWithDescription;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->e(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 754
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/e;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/e;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->d(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a(Ljava/lang/String;Z)V

    .line 756
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

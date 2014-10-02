.class Lcom/viber/voip/messages/conversation/publicgroup/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/publicgroup/c;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/publicgroup/c;)V
    .locals 0
    .parameter

    .prologue
    .line 729
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/d;->a:Lcom/viber/voip/messages/conversation/publicgroup/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const v1, 0x10101

    .line 732
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/d;->a:Lcom/viber/voip/messages/conversation/publicgroup/c;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/c;->c:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;I)I

    .line 733
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/d;->a:Lcom/viber/voip/messages/conversation/publicgroup/c;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/c;->c:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->b(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;I)I

    .line 734
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/d;->a:Lcom/viber/voip/messages/conversation/publicgroup/c;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/c;->c:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/d;->a:Lcom/viber/voip/messages/conversation/publicgroup/c;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/publicgroup/c;->c:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v1}, Lcom/viber/voip/widget/TextViewWithDescription;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a(Ljava/lang/String;Z)V

    .line 735
    return-void
.end method

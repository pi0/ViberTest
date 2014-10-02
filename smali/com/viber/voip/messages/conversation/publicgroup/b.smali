.class Lcom/viber/voip/messages/conversation/publicgroup/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/b/al;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 596
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/b;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Landroid/graphics/Bitmap;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 600
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/b;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 601
    if-nez p2, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/b;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->g:Lcom/viber/voip/widget/TextViewWithDescription;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->setText(Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/b;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->g:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v0, p2}, Lcom/viber/voip/widget/TextViewWithDescription;->setLeftDrawable(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

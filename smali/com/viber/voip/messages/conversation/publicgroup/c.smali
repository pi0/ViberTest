.class Lcom/viber/voip/messages/conversation/publicgroup/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 704
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/c;->c:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iput p2, p0, Lcom/viber/voip/messages/conversation/publicgroup/c;->a:I

    iput-boolean p3, p0, Lcom/viber/voip/messages/conversation/publicgroup/c;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v0, 0x1

    .line 707
    iget v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/c;->a:I

    if-nez v1, :cond_1

    .line 708
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/c;->c:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/c;->c:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0203af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/widget/TextViewWithDescription;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 709
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/c;->c:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2, v0}, Lcom/viber/voip/widget/TextViewWithDescription;->a(Ljava/lang/String;I)V

    .line 710
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/c;->c:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v1}, Lcom/viber/voip/widget/TextViewWithDescription;->c()V

    .line 739
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/c;->c:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/c;->a:I

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/c;->c:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-static {v2}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->b(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)Z

    move-result v2

    if-eqz v2, :cond_7

    :goto_1
    invoke-static {v1, v0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;Z)V

    .line 740
    return-void

    .line 711
    :cond_1
    iget v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/c;->a:I

    if-ne v1, v0, :cond_2

    .line 712
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/c;->c:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/c;->c:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0203ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/widget/TextViewWithDescription;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 713
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/c;->c:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/c;->c:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c069b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/viber/voip/widget/TextViewWithDescription;->a(Ljava/lang/String;I)V

    .line 714
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/c;->c:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v1}, Lcom/viber/voip/widget/TextViewWithDescription;->c()V

    goto :goto_0

    .line 715
    :cond_2
    iget v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/c;->a:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_3

    .line 716
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/c;->c:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v1, v5}, Lcom/viber/voip/widget/TextViewWithDescription;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 717
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/c;->c:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2, v0}, Lcom/viber/voip/widget/TextViewWithDescription;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 718
    :cond_3
    iget v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/c;->a:I

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_4

    .line 719
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/c;->c:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    invoke-virtual {v1, v5}, Lcom/viber/voip/widget/TextViewWithDescription;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 720
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/c;->c:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/c;->c:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c069d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/viber/voip/widget/TextViewWithDescription;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 722
    :cond_4
    iget v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/c;->a:I

    if-eq v1, v4, :cond_5

    iget v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/c;->a:I

    const/16 v2, 0x65

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/c;->a:I

    const/16 v2, 0x66

    if-ne v1, v2, :cond_0

    .line 724
    :cond_5
    iget v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/c;->a:I

    if-ne v1, v4, :cond_6

    iget-boolean v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/c;->b:Z

    if-eqz v1, :cond_6

    .line 725
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/c;->c:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    const v2, 0x7f0c069e

    const v3, 0x7f0c069f

    invoke-static {v1, v2, v3, v5}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILjava/lang/Runnable;)Landroid/content/DialogInterface;

    .line 728
    :cond_6
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/c;->c:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/c;->c:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020343

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/c;->c:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-virtual {v3}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020344

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/widget/TextViewWithDescription;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 729
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/c;->c:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    new-instance v2, Lcom/viber/voip/messages/conversation/publicgroup/d;

    invoke-direct {v2, p0}, Lcom/viber/voip/messages/conversation/publicgroup/d;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/c;)V

    invoke-virtual {v1, v2}, Lcom/viber/voip/widget/TextViewWithDescription;->setRightDrawableClickListener(Landroid/view/View$OnClickListener;)V

    .line 737
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/c;->c:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a:Lcom/viber/voip/widget/TextViewWithDescription;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/c;->c:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c069c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/viber/voip/widget/TextViewWithDescription;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 739
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

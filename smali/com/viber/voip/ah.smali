.class Lcom/viber/voip/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/viber/voip/HomeActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/HomeActivity;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 678
    iput-object p1, p0, Lcom/viber/voip/ah;->c:Lcom/viber/voip/HomeActivity;

    iput p2, p0, Lcom/viber/voip/ah;->a:I

    iput p3, p0, Lcom/viber/voip/ah;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBadgesOnTab() tabIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/ah;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/ah;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/HomeActivity;->a(Ljava/lang/String;)V

    .line 682
    iget v0, p0, Lcom/viber/voip/ah;->a:I

    .line 683
    iget-object v1, p0, Lcom/viber/voip/ah;->c:Lcom/viber/voip/HomeActivity;

    invoke-virtual {v1}, Lcom/viber/voip/HomeActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/ActionBar;->getTabCount()I

    move-result v1

    if-lt v0, v1, :cond_5

    move v1, v2

    .line 684
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/ah;->c:Lcom/viber/voip/HomeActivity;

    invoke-virtual {v0}, Lcom/viber/voip/HomeActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->getTabAt(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v0

    .line 685
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 687
    const v4, 0x7f07012e

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 688
    if-nez v0, :cond_0

    .line 703
    :goto_1
    return-void

    .line 690
    :cond_0
    const/4 v4, 0x3

    if-ne v4, v1, :cond_2

    .line 691
    iget v1, p0, Lcom/viber/voip/ah;->b:I

    if-lez v1, :cond_1

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_2

    .line 693
    :cond_2
    check-cast v0, Landroid/widget/TextView;

    .line 694
    iget v4, p0, Lcom/viber/voip/ah;->b:I

    if-lez v4, :cond_4

    .line 695
    if-nez v1, :cond_3

    iget v1, p0, Lcom/viber/voip/ah;->b:I

    invoke-static {v1}, Lcom/viber/voip/messages/j;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 696
    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 697
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 695
    :cond_3
    iget v1, p0, Lcom/viber/voip/ah;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 699
    :cond_4
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    move v1, v0

    goto :goto_0
.end method

.class Lcom/viber/voip/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/HomeActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 658
    iput-object p1, p0, Lcom/viber/voip/ag;->a:Lcom/viber/voip/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 661
    iget-object v2, p0, Lcom/viber/voip/ag;->a:Lcom/viber/voip/HomeActivity;

    invoke-virtual {v2}, Lcom/viber/voip/HomeActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v2

    .line 662
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initBadges() tabIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/HomeActivity;->a(Ljava/lang/String;)V

    .line 664
    iget-object v2, p0, Lcom/viber/voip/ag;->a:Lcom/viber/voip/HomeActivity;

    invoke-static {v2}, Lcom/viber/voip/HomeActivity;->e(Lcom/viber/voip/HomeActivity;)Lcom/viber/voip/util/fz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/util/fz;->g()I

    move-result v2

    .line 665
    iget-object v3, p0, Lcom/viber/voip/ag;->a:Lcom/viber/voip/HomeActivity;

    invoke-static {v3, v1, v2}, Lcom/viber/voip/HomeActivity;->a(Lcom/viber/voip/HomeActivity;II)V

    .line 667
    iget-object v2, p0, Lcom/viber/voip/ag;->a:Lcom/viber/voip/HomeActivity;

    invoke-static {v2}, Lcom/viber/voip/HomeActivity;->e(Lcom/viber/voip/HomeActivity;)Lcom/viber/voip/util/fz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/util/fz;->d()I

    move-result v2

    .line 668
    iget-object v3, p0, Lcom/viber/voip/ag;->a:Lcom/viber/voip/HomeActivity;

    invoke-static {v3, v0, v2}, Lcom/viber/voip/HomeActivity;->a(Lcom/viber/voip/HomeActivity;II)V

    .line 670
    iget-object v2, p0, Lcom/viber/voip/ag;->a:Lcom/viber/voip/HomeActivity;

    invoke-static {v2}, Lcom/viber/voip/HomeActivity;->e(Lcom/viber/voip/HomeActivity;)Lcom/viber/voip/util/fz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/util/fz;->e()Z

    move-result v2

    .line 671
    iget-object v3, p0, Lcom/viber/voip/ag;->a:Lcom/viber/voip/HomeActivity;

    const/4 v4, 0x3

    if-eqz v2, :cond_0

    :goto_0
    invoke-static {v3, v4, v0}, Lcom/viber/voip/HomeActivity;->a(Lcom/viber/voip/HomeActivity;II)V

    .line 672
    return-void

    :cond_0
    move v0, v1

    .line 671
    goto :goto_0
.end method

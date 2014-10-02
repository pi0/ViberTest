.class Lcom/viber/voip/util/br;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/util/bo;


# direct methods
.method constructor <init>(Lcom/viber/voip/util/bo;)V
    .locals 0
    .parameter

    .prologue
    .line 572
    iput-object p1, p0, Lcom/viber/voip/util/br;->a:Lcom/viber/voip/util/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 575
    iget-object v0, p0, Lcom/viber/voip/util/br;->a:Lcom/viber/voip/util/bo;

    invoke-static {v0}, Lcom/viber/voip/util/bo;->d(Lcom/viber/voip/util/bo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/viber/voip/util/br;->a:Lcom/viber/voip/util/bo;

    invoke-static {v0}, Lcom/viber/voip/util/bo;->a(Lcom/viber/voip/util/bo;)Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    .line 580
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/util/br;->a:Lcom/viber/voip/util/bo;

    invoke-static {v0}, Lcom/viber/voip/util/bo;->e(Lcom/viber/voip/util/bo;)Lcom/viber/voip/HomeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/HomeActivity;->i()Lcom/viber/voip/util/bl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/util/bl;->b(ZZ)V

    .line 581
    return-void

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/util/br;->a:Lcom/viber/voip/util/bo;

    invoke-static {v0}, Lcom/viber/voip/util/bo;->a(Lcom/viber/voip/util/bo;)Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->a(Z)V

    goto :goto_0
.end method

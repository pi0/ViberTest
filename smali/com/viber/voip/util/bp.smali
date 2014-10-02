.class Lcom/viber/voip/util/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/slidingmenu/lib/o;


# instance fields
.field final synthetic a:Lcom/viber/voip/util/bo;


# direct methods
.method constructor <init>(Lcom/viber/voip/util/bo;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/viber/voip/util/bp;->a:Lcom/viber/voip/util/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 206
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/viber/voip/util/bp;->a:Lcom/viber/voip/util/bo;

    invoke-static {v0}, Lcom/viber/voip/util/bo;->a(Lcom/viber/voip/util/bo;)Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    .line 208
    iget-object v0, p0, Lcom/viber/voip/util/bp;->a:Lcom/viber/voip/util/bo;

    invoke-static {v0}, Lcom/viber/voip/util/bo;->a(Lcom/viber/voip/util/bo;)Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setOnPageSelectedListener(Lcom/slidingmenu/lib/o;)V

    .line 210
    :cond_0
    return-void
.end method

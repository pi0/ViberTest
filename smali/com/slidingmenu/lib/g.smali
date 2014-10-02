.class Lcom/slidingmenu/lib/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/slidingmenu/lib/d;


# instance fields
.field final synthetic a:Lcom/slidingmenu/lib/SlidingMenu;


# direct methods
.method constructor <init>(Lcom/slidingmenu/lib/SlidingMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/slidingmenu/lib/g;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 241
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/slidingmenu/lib/g;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-static {v0}, Lcom/slidingmenu/lib/SlidingMenu;->a(Lcom/slidingmenu/lib/SlidingMenu;)Lcom/slidingmenu/lib/m;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/slidingmenu/lib/g;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-static {v0}, Lcom/slidingmenu/lib/SlidingMenu;->a(Lcom/slidingmenu/lib/SlidingMenu;)Lcom/slidingmenu/lib/m;

    move-result-object v0

    invoke-interface {v0}, Lcom/slidingmenu/lib/m;->a()V

    .line 246
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/slidingmenu/lib/g;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-static {v0}, Lcom/slidingmenu/lib/SlidingMenu;->c(Lcom/slidingmenu/lib/SlidingMenu;)Lcom/slidingmenu/lib/o;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/slidingmenu/lib/g;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-static {v0}, Lcom/slidingmenu/lib/SlidingMenu;->c(Lcom/slidingmenu/lib/SlidingMenu;)Lcom/slidingmenu/lib/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/slidingmenu/lib/o;->a(I)V

    .line 249
    :cond_1
    return-void

    .line 243
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/slidingmenu/lib/g;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-static {v0}, Lcom/slidingmenu/lib/SlidingMenu;->b(Lcom/slidingmenu/lib/SlidingMenu;)Lcom/slidingmenu/lib/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/slidingmenu/lib/g;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-static {v0}, Lcom/slidingmenu/lib/SlidingMenu;->b(Lcom/slidingmenu/lib/SlidingMenu;)Lcom/slidingmenu/lib/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/slidingmenu/lib/k;->a()V

    goto :goto_0
.end method

.method public a(IFI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    return-void
.end method

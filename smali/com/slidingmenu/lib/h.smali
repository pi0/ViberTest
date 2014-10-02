.class Lcom/slidingmenu/lib/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/slidingmenu/lib/p;


# instance fields
.field final synthetic a:Lcom/slidingmenu/lib/SlidingMenu;


# direct methods
.method constructor <init>(Lcom/slidingmenu/lib/SlidingMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/slidingmenu/lib/h;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d_(I)V
    .locals 1
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Lcom/slidingmenu/lib/h;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-static {v0}, Lcom/slidingmenu/lib/SlidingMenu;->d(Lcom/slidingmenu/lib/SlidingMenu;)Lcom/slidingmenu/lib/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/slidingmenu/lib/h;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-static {v0}, Lcom/slidingmenu/lib/SlidingMenu;->d(Lcom/slidingmenu/lib/SlidingMenu;)Lcom/slidingmenu/lib/p;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/slidingmenu/lib/p;->d_(I)V

    .line 258
    :cond_0
    return-void
.end method

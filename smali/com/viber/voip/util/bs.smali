.class Lcom/viber/voip/util/bs;
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
    .line 667
    iput-object p1, p0, Lcom/viber/voip/util/bs;->a:Lcom/viber/voip/util/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/viber/voip/util/bs;->a:Lcom/viber/voip/util/bo;

    invoke-static {v0}, Lcom/viber/voip/util/bo;->b(Lcom/viber/voip/util/bo;)Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->b(Z)V

    .line 672
    return-void
.end method

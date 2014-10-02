.class final Lcom/viber/voip/util/gp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/az;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .parameter

    .prologue
    .line 603
    iput-object p1, p0, Lcom/viber/voip/util/gp;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 606
    iget-object v0, p0, Lcom/viber/voip/util/gp;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 607
    if-eqz p1, :cond_0

    .line 608
    invoke-static {}, Lcom/viber/voip/util/gn;->b()V

    .line 610
    :cond_0
    return-void
.end method

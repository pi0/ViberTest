.class Lcom/viber/voip/block/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/block/q;

.field final synthetic b:Lcom/viber/voip/block/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/block/a;Lcom/viber/voip/block/q;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/viber/voip/block/b;->b:Lcom/viber/voip/block/a;

    iput-object p2, p0, Lcom/viber/voip/block/b;->a:Lcom/viber/voip/block/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/viber/voip/block/b;->b:Lcom/viber/voip/block/a;

    invoke-static {v0}, Lcom/viber/voip/block/a;->a(Lcom/viber/voip/block/a;)Lcom/viber/voip/block/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/viber/voip/block/b;->b:Lcom/viber/voip/block/a;

    invoke-static {v0}, Lcom/viber/voip/block/a;->a(Lcom/viber/voip/block/a;)Lcom/viber/voip/block/d;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/block/b;->a:Lcom/viber/voip/block/q;

    invoke-interface {v0, v1}, Lcom/viber/voip/block/d;->a(Lcom/viber/voip/block/q;)V

    .line 75
    :cond_0
    return-void
.end method

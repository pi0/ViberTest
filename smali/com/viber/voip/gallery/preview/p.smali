.class Lcom/viber/voip/gallery/preview/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/gallery/preview/o;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/preview/o;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/viber/voip/gallery/preview/p;->a:Lcom/viber/voip/gallery/preview/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/p;->a:Lcom/viber/voip/gallery/preview/o;

    invoke-static {v0}, Lcom/viber/voip/gallery/preview/o;->a(Lcom/viber/voip/gallery/preview/o;)Lcom/viber/voip/gallery/preview/n;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/p;->a:Lcom/viber/voip/gallery/preview/o;

    invoke-static {v0}, Lcom/viber/voip/gallery/preview/o;->a(Lcom/viber/voip/gallery/preview/o;)Lcom/viber/voip/gallery/preview/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/gallery/preview/n;->c()V

    .line 78
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

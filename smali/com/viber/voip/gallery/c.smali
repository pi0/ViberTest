.class Lcom/viber/voip/gallery/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/gallery/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/b;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/viber/voip/gallery/c;->a:Lcom/viber/voip/gallery/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/viber/voip/gallery/c;->a:Lcom/viber/voip/gallery/b;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/gallery/b;->a(Lcom/viber/voip/gallery/b;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/gallery/c;->a:Lcom/viber/voip/gallery/b;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/gallery/b;->a(Lcom/viber/voip/gallery/b;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

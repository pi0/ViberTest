.class Lcom/viber/voip/messages/ui/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/a/c;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/a/c;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/viber/voip/messages/ui/a/f;->a:Lcom/viber/voip/messages/ui/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/f;->a:Lcom/viber/voip/messages/ui/a/c;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/a/f;->a:Lcom/viber/voip/messages/ui/a/c;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/a/c;->d(Lcom/viber/voip/messages/ui/a/c;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/a/c;->a(Lcom/viber/voip/messages/ui/a/c;I)I

    .line 154
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.class public abstract Lcom/viber/voip/messages/conversation/a/a/a/k;
.super Lcom/viber/voip/ui/b/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/voip/ui/b/b",
        "<",
        "Lcom/viber/voip/messages/conversation/a/a/a;",
        "Lcom/viber/voip/messages/conversation/a/a/b/a/b;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/viber/voip/ui/b/b;-><init>(Landroid/view/View;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a;Lcom/viber/voip/messages/conversation/a/r;Landroid/view/View;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p4}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p4}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p4}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-interface {p2, p1}, Lcom/viber/voip/messages/conversation/a/a/b/a;->g(Lcom/viber/voip/messages/conversation/a/a/a;)I

    move-result v3

    invoke-virtual {p4, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 38
    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    invoke-interface {p3, p1}, Lcom/viber/voip/messages/conversation/a/r;->a_(Lcom/viber/voip/messages/conversation/a/a/a;)V

    .line 41
    :cond_1
    return-void
.end method

.class public Lcom/viber/voip/messages/adapters/a/a/a;
.super Lcom/viber/voip/messages/adapters/a/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/voip/messages/adapters/a/a/b",
        "<",
        "Lcom/viber/voip/messages/adapters/a/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/viber/voip/messages/adapters/a/b/a;Lcom/viber/voip/messages/h;Lcom/viber/voip/messages/ui/bb;Lcom/viber/voip/util/b/w;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/adapters/a/a/b;-><init>(Landroid/view/View;Lcom/viber/voip/messages/adapters/a/b/a;Lcom/viber/voip/messages/h;Lcom/viber/voip/messages/ui/bb;Lcom/viber/voip/util/b/w;Z)V

    .line 18
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)Lcom/viber/voip/ui/b/a;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lcom/viber/voip/ui/b/a",
            "<",
            "Lcom/viber/voip/messages/adapters/a/b;",
            "Lcom/viber/voip/messages/adapters/a/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Lcom/viber/voip/messages/adapters/a/a/e;

    invoke-direct {v0, p1}, Lcom/viber/voip/messages/adapters/a/a/e;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected a(Landroid/view/View;Lcom/viber/voip/messages/adapters/a/b/a;Lcom/viber/voip/util/b/w;Lcom/viber/voip/messages/h;)Lcom/viber/voip/ui/b/a;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/viber/voip/messages/adapters/a/b/a;",
            "Lcom/viber/voip/util/b/w;",
            "Lcom/viber/voip/messages/h;",
            ")",
            "Lcom/viber/voip/ui/b/a",
            "<",
            "Lcom/viber/voip/messages/adapters/a/b;",
            "Lcom/viber/voip/messages/adapters/a/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Lcom/viber/voip/messages/adapters/a/a/h;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/viber/voip/messages/adapters/a/a/h;-><init>(Landroid/view/View;Lcom/viber/voip/messages/adapters/a/b/a;Lcom/viber/voip/util/b/w;Lcom/viber/voip/messages/h;)V

    return-object v0
.end method

.method protected a(Landroid/view/View;Lcom/viber/voip/messages/h;Lcom/viber/voip/messages/ui/bb;)Lcom/viber/voip/ui/b/a;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/viber/voip/messages/h;",
            "Lcom/viber/voip/messages/ui/bb;",
            ")",
            "Lcom/viber/voip/ui/b/a",
            "<",
            "Lcom/viber/voip/messages/adapters/a/b;",
            "Lcom/viber/voip/messages/adapters/a/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Lcom/viber/voip/messages/adapters/a/a/g;

    invoke-direct {v0, p1, p2, p3}, Lcom/viber/voip/messages/adapters/a/a/g;-><init>(Landroid/view/View;Lcom/viber/voip/messages/h;Lcom/viber/voip/messages/ui/bb;)V

    return-object v0
.end method

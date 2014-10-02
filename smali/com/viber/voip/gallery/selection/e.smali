.class Lcom/viber/voip/gallery/selection/e;
.super Lcom/viber/provider/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/provider/f",
        "<",
        "Lcom/viber/voip/gallery/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/viber/voip/gallery/selection/c;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/selection/c;ILcom/viber/provider/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/viber/voip/gallery/selection/e;->a:Lcom/viber/voip/gallery/selection/c;

    invoke-direct {p0, p2, p3}, Lcom/viber/provider/f;-><init>(ILcom/viber/provider/a;)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Ljava/lang/Object;)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1
    .parameter

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/viber/voip/gallery/selection/e;->b(Ljava/lang/Object;)Lcom/viber/voip/gallery/a/b;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/lang/Object;)Lcom/viber/voip/gallery/a/b;
    .locals 0
    .parameter

    .prologue
    .line 69
    check-cast p1, Lcom/viber/voip/gallery/a/b;

    return-object p1
.end method

.method protected synthetic b(I)[Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1
    .parameter

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/viber/voip/gallery/selection/e;->c(I)[Lcom/viber/voip/gallery/a/b;

    move-result-object v0

    return-object v0
.end method

.method protected c(I)[Lcom/viber/voip/gallery/a/b;
    .locals 1
    .parameter

    .prologue
    .line 74
    new-array v0, p1, [Lcom/viber/voip/gallery/a/b;

    return-object v0
.end method

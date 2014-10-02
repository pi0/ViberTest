.class Lcom/viber/voip/gallery/selection/m;
.super Lcom/viber/provider/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/provider/f",
        "<",
        "Lcom/viber/voip/gallery/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/viber/voip/gallery/selection/j;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/selection/j;ILcom/viber/provider/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/viber/voip/gallery/selection/m;->a:Lcom/viber/voip/gallery/selection/j;

    invoke-direct {p0, p2, p3}, Lcom/viber/provider/f;-><init>(ILcom/viber/provider/a;)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Ljava/lang/Object;)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/viber/voip/gallery/selection/m;->b(Ljava/lang/Object;)Lcom/viber/voip/gallery/a/d;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/lang/Object;)Lcom/viber/voip/gallery/a/d;
    .locals 0
    .parameter

    .prologue
    .line 91
    check-cast p1, Lcom/viber/voip/gallery/a/d;

    return-object p1
.end method

.method protected synthetic b(I)[Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/viber/voip/gallery/selection/m;->c(I)[Lcom/viber/voip/gallery/a/d;

    move-result-object v0

    return-object v0
.end method

.method protected c(I)[Lcom/viber/voip/gallery/a/d;
    .locals 1
    .parameter

    .prologue
    .line 96
    new-array v0, p1, [Lcom/viber/voip/gallery/a/d;

    return-object v0
.end method

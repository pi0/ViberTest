.class Lcom/viber/voip/calls/a/b;
.super Landroid/support/v4/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/viber/voip/calls/entities/AggregatedCallEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/viber/voip/calls/a/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/calls/a/a;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/viber/voip/calls/a/b;->a:Lcom/viber/voip/calls/a/a;

    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;Lcom/viber/voip/calls/entities/AggregatedCallEntity;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 58
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/viber/voip/calls/entities/AggregatedCallEntity;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/calls/a/b;->a(Ljava/lang/Integer;Lcom/viber/voip/calls/entities/AggregatedCallEntity;)I

    move-result v0

    return v0
.end method

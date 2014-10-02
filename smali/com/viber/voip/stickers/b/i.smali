.class Lcom/viber/voip/stickers/b/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/viber/voip/stickers/b/h;


# direct methods
.method constructor <init>(Lcom/viber/voip/stickers/b/h;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/viber/voip/stickers/b/i;->a:Lcom/viber/voip/stickers/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;Ljava/lang/Runnable;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 80
    check-cast p1, Lcom/viber/voip/stickers/b/o;

    .line 81
    check-cast p2, Lcom/viber/voip/stickers/b/o;

    .line 82
    invoke-virtual {p2}, Lcom/viber/voip/stickers/b/o;->a()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/viber/voip/stickers/b/o;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 77
    check-cast p1, Ljava/lang/Runnable;

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/stickers/b/i;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;)I

    move-result v0

    return v0
.end method

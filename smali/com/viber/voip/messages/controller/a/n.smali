.class Lcom/viber/voip/messages/controller/a/n;
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
        "Lcom/viber/jni/PublicGroupChangeEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/controller/a/m;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/m;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/n;->a:Lcom/viber/voip/messages/controller/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/jni/PublicGroupChangeEvent;Lcom/viber/jni/PublicGroupChangeEvent;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 260
    invoke-virtual {p1}, Lcom/viber/jni/PublicGroupChangeEvent;->getEventId()I

    move-result v0

    invoke-virtual {p2}, Lcom/viber/jni/PublicGroupChangeEvent;->getEventId()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 257
    check-cast p1, Lcom/viber/jni/PublicGroupChangeEvent;

    check-cast p2, Lcom/viber/jni/PublicGroupChangeEvent;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/messages/controller/a/n;->a(Lcom/viber/jni/PublicGroupChangeEvent;Lcom/viber/jni/PublicGroupChangeEvent;)I

    move-result v0

    return v0
.end method

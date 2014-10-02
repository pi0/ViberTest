.class Lcom/viber/voip/messages/conversation/aj;
.super Landroid/support/v4/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/Integer;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ai;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ai;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/aj;->a:Lcom/viber/voip/messages/conversation/ai;

    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Integer;Lcom/viber/voip/messages/conversation/an;)I
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "TT;)I"
        }
    .end annotation

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method protected synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/viber/voip/messages/conversation/an;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/messages/conversation/aj;->a(Ljava/lang/Integer;Lcom/viber/voip/messages/conversation/an;)I

    move-result v0

    return v0
.end method

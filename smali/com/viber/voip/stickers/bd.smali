.class Lcom/viber/voip/stickers/bd;
.super Landroid/support/v4/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Lcom/viber/voip/stickers/f/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/viber/voip/stickers/bb;


# direct methods
.method public constructor <init>(Lcom/viber/voip/stickers/bb;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/viber/voip/stickers/bd;->a:Lcom/viber/voip/stickers/bb;

    .line 199
    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    .line 200
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lcom/viber/voip/stickers/f/a;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method protected synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 197
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/viber/voip/stickers/f/a;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/stickers/bd;->a(Ljava/lang/String;Lcom/viber/voip/stickers/f/a;)I

    move-result v0

    return v0
.end method

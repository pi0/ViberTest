.class Lcom/viber/voip/contacts/c;
.super Landroid/support/v4/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/viber/voip/contacts/b/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/b;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/viber/voip/contacts/c;->a:Lcom/viber/voip/contacts/b;

    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Integer;Lcom/viber/voip/contacts/b/e;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method protected synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 61
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/viber/voip/contacts/b/e;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/contacts/c;->a(Ljava/lang/Integer;Lcom/viber/voip/contacts/b/e;)I

    move-result v0

    return v0
.end method

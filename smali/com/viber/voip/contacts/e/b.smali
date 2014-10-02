.class Lcom/viber/voip/contacts/e/b;
.super Landroid/support/v4/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/viber/voip/contacts/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/e/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/e/a;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/viber/voip/contacts/e/b;->a:Lcom/viber/voip/contacts/e/a;

    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;Lcom/viber/voip/contacts/b/b;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 69
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/viber/voip/contacts/b/b;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/contacts/e/b;->a(Ljava/lang/Integer;Lcom/viber/voip/contacts/b/b;)I

    move-result v0

    return v0
.end method

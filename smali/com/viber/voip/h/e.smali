.class Lcom/viber/voip/h/e;
.super Landroid/support/v4/util/SparseArrayCompat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/SparseArrayCompat",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/viber/voip/h/b;


# direct methods
.method private constructor <init>(Lcom/viber/voip/h/b;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/viber/voip/h/e;->a:Lcom/viber/voip/h/b;

    invoke-direct {p0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/h/b;Lcom/viber/voip/h/c;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/viber/voip/h/e;-><init>(Lcom/viber/voip/h/b;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 254
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/viber/voip/h/e;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 255
    invoke-virtual {p0, v0}, Lcom/viber/voip/h/e;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    :goto_1
    return v0

    .line 254
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/util/SparseArrayCompat;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    goto :goto_1
.end method

.method public synthetic indexOfValue(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 250
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/viber/voip/h/e;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

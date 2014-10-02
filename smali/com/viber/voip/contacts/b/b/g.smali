.class final Lcom/viber/voip/contacts/b/b/g;
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
        "Lcom/viber/voip/contacts/b/i;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/contacts/b/i;Lcom/viber/voip/contacts/b/i;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 280
    invoke-interface {p1}, Lcom/viber/voip/contacts/b/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 281
    :goto_0
    invoke-interface {p2}, Lcom/viber/voip/contacts/b/i;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    .line 282
    :cond_0
    if-nez v0, :cond_2

    if-eqz v2, :cond_2

    .line 287
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 280
    goto :goto_0

    .line 284
    :cond_2
    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    .line 285
    const/4 v1, -0x1

    goto :goto_1

    .line 287
    :cond_3
    invoke-interface {p1}, Lcom/viber/voip/contacts/b/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/viber/voip/contacts/b/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 276
    check-cast p1, Lcom/viber/voip/contacts/b/i;

    check-cast p2, Lcom/viber/voip/contacts/b/i;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/contacts/b/b/g;->a(Lcom/viber/voip/contacts/b/i;Lcom/viber/voip/contacts/b/i;)I

    move-result v0

    return v0
.end method

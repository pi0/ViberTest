.class final Lcom/viber/voip/contacts/b/b/h;
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
        "Lcom/viber/voip/contacts/b/f;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/contacts/b/f;Lcom/viber/voip/contacts/b/f;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 296
    invoke-interface {p1}, Lcom/viber/voip/contacts/b/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/viber/voip/contacts/b/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 292
    check-cast p1, Lcom/viber/voip/contacts/b/f;

    check-cast p2, Lcom/viber/voip/contacts/b/f;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/contacts/b/b/h;->a(Lcom/viber/voip/contacts/b/f;Lcom/viber/voip/contacts/b/f;)I

    move-result v0

    return v0
.end method

.class public Lcom/viber/voip/contacts/c/c/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/c/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-static {}, Lcom/viber/voip/contacts/c/c/a/b;->a()Lcom/viber/voip/contacts/c/c/a/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/contacts/c/c/a/b;->a(Ljava/util/Set;Z)V

    .line 12
    return-void
.end method

.method public b(Ljava/util/Set;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-static {}, Lcom/viber/voip/contacts/c/c/a/b;->a()Lcom/viber/voip/contacts/c/c/a/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/contacts/c/c/a/b;->b(Ljava/util/Set;Z)V

    .line 17
    return-void
.end method

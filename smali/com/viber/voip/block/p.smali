.class Lcom/viber/voip/block/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/c/d;


# instance fields
.field final synthetic a:Lcom/viber/voip/block/o;


# direct methods
.method constructor <init>(Lcom/viber/voip/block/o;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/viber/voip/block/p;->a:Lcom/viber/voip/block/o;

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
    .line 24
    iget-object v0, p0, Lcom/viber/voip/block/p;->a:Lcom/viber/voip/block/o;

    invoke-virtual {v0}, Lcom/viber/voip/block/o;->g()V

    .line 25
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
    .line 29
    iget-object v0, p0, Lcom/viber/voip/block/p;->a:Lcom/viber/voip/block/o;

    invoke-virtual {v0}, Lcom/viber/voip/block/o;->g()V

    .line 30
    return-void
.end method

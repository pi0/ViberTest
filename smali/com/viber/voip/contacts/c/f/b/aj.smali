.class public Lcom/viber/voip/contacts/c/f/b/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/b/aj;->a:Ljava/util/Set;

    .line 89
    iput-object p2, p0, Lcom/viber/voip/contacts/c/f/b/aj;->b:Ljava/util/Set;

    .line 90
    iput-object p3, p0, Lcom/viber/voip/contacts/c/f/b/aj;->c:Ljava/util/Set;

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/b/aj;->d:Ljava/util/Set;

    .line 93
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/aj;->d:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 94
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/aj;->d:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 95
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/viber/voip/contacts/c/f/b/ai;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/contacts/c/f/b/aj;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/aj;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/aj;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/aj;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UpdateAddressbookResult [newNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/aj;->a:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

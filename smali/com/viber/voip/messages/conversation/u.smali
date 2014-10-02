.class public Lcom/viber/voip/messages/conversation/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/viber/voip/messages/conversation/r;


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/conversation/r;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/u;->b:Lcom/viber/voip/messages/conversation/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/u;->a:Ljava/util/List;

    .line 34
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)Lcom/viber/voip/messages/conversation/u;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/u;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    return-object p0
.end method

.method public a()[Lcom/viber/voip/messages/conversation/an;
    .locals 4

    .prologue
    .line 37
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/u;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Lcom/viber/voip/messages/conversation/an;

    .line 38
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/u;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 39
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/u;->b:Lcom/viber/voip/messages/conversation/r;

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/u;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/viber/voip/messages/conversation/r;->e(I)Lcom/viber/voip/messages/conversation/an;

    move-result-object v0

    aput-object v0, v2, v1

    .line 38
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 42
    :cond_0
    return-object v2
.end method

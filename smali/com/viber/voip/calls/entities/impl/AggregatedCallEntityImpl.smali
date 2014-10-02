.class public Lcom/viber/voip/calls/entities/impl/AggregatedCallEntityImpl;
.super Lcom/viber/voip/calls/entities/impl/CallEntityImpl;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/calls/entities/AggregatedCallEntity;


# static fields
.field public static final a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;


# instance fields
.field private c:Lcom/viber/voip/contacts/b/b/k;

.field private d:Lcom/viber/voip/contacts/b/b/e;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/calls/entities/CallEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/viber/voip/contacts/b/a/a;

    invoke-direct {v0}, Lcom/viber/voip/contacts/b/a/a;-><init>()V

    sput-object v0, Lcom/viber/voip/calls/entities/impl/AggregatedCallEntityImpl;->a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/calls/entities/impl/AggregatedCallEntityImpl;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/viber/voip/calls/entities/impl/AggregatedCallEntityImpl;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(Lcom/viber/voip/calls/entities/CallEntity;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/viber/voip/calls/entities/impl/AggregatedCallEntityImpl;->e:Ljava/util/List;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/calls/entities/impl/AggregatedCallEntityImpl;->e:Ljava/util/List;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/calls/entities/impl/AggregatedCallEntityImpl;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public a(Lcom/viber/voip/contacts/b/b/a/o;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/viber/voip/calls/entities/impl/AggregatedCallEntityImpl;->c:Lcom/viber/voip/contacts/b/b/k;

    invoke-virtual {v0, p1}, Lcom/viber/voip/contacts/b/b/k;->a(Lcom/viber/voip/contacts/b/i;)V

    .line 52
    return-void
.end method

.method public a(Lcom/viber/voip/contacts/b/b/e;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/viber/voip/calls/entities/impl/AggregatedCallEntityImpl;->d:Lcom/viber/voip/contacts/b/b/e;

    .line 65
    return-void
.end method

.method public a(Lcom/viber/voip/contacts/b/b/k;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/viber/voip/calls/entities/impl/AggregatedCallEntityImpl;->c:Lcom/viber/voip/contacts/b/b/k;

    .line 60
    return-void
.end method

.method public b()Lcom/viber/voip/contacts/b/f;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/viber/voip/calls/entities/impl/AggregatedCallEntityImpl;->c:Lcom/viber/voip/contacts/b/b/k;

    return-object v0
.end method

.method public c()Lcom/viber/voip/contacts/b/b;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/viber/voip/calls/entities/impl/AggregatedCallEntityImpl;->d:Lcom/viber/voip/contacts/b/b/e;

    return-object v0
.end method

.method public d()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/viber/voip/calls/entities/CallEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/viber/voip/calls/entities/impl/AggregatedCallEntityImpl;->e:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AgregatedCallEntityImpl ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/calls/entities/impl/AggregatedCallEntityImpl;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", numberData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/calls/entities/impl/AggregatedCallEntityImpl;->c:Lcom/viber/voip/contacts/b/b/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", contact="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/calls/entities/impl/AggregatedCallEntityImpl;->d:Lcom/viber/voip/contacts/b/b/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

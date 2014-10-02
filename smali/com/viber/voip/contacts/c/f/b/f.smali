.class public Lcom/viber/voip/contacts/c/f/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/contacts/c/f/b/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/b/f;->d:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/b/f;->e:Ljava/util/List;

    .line 56
    return-void
.end method


# virtual methods
.method protected a(IIIZZILjava/util/Map;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZZI",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    iput p2, p0, Lcom/viber/voip/contacts/c/f/b/f;->a:I

    .line 66
    iget-object v6, p0, Lcom/viber/voip/contacts/c/f/b/f;->e:Ljava/util/List;

    new-instance v0, Lcom/viber/voip/contacts/c/f/b/g;

    move v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/contacts/c/f/b/g;-><init>(IIZZI)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    if-eqz p7, :cond_0

    .line 69
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/f;->d:Ljava/util/Map;

    invoke-interface {v0, p7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 72
    :cond_0
    if-eqz p4, :cond_1

    .line 73
    iput-boolean p4, p0, Lcom/viber/voip/contacts/c/f/b/f;->b:Z

    .line 76
    :cond_1
    if-eqz p5, :cond_2

    .line 77
    iput-boolean p5, p0, Lcom/viber/voip/contacts/c/f/b/f;->c:Z

    .line 79
    :cond_2
    return-void
.end method

.method protected a(Lcom/viber/jni/CAddressBookEntry;)V
    .locals 3
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/f;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/viber/jni/CAddressBookEntry;->getClientCanonizedPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/viber/jni/CAddressBookEntry;->getClientPhotoID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/f;->c:Z

    .line 60
    return-void
.end method

.method public final f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/f;->d:Ljava/util/Map;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/f;->b:Z

    return v0
.end method

.method public final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/contacts/c/f/b/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/f;->e:Ljava/util/List;

    return-object v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/f;->c:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ViberNumbersPack [mClearAll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/contacts/c/f/b/f;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLastPortion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/contacts/c/f/b/f;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRegisteredNumbers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/f;->d:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPackHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/f;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

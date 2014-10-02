.class public Lcom/viber/voip/contacts/b/b/i;
.super Lcom/viber/voip/contacts/b/b/e;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/b/d;


# static fields
.field public static final a:Lcom/viber/voip/messages/orm/creator/Creator;


# instance fields
.field private E:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/viber/voip/contacts/b/i;",
            "Lcom/viber/voip/contacts/b/g;",
            ">;"
        }
    .end annotation
.end field

.field private F:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/contacts/b/g;",
            ">;"
        }
    .end annotation
.end field

.field private G:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/viber/voip/contacts/b/a/g;

    invoke-direct {v0}, Lcom/viber/voip/contacts/b/a/g;-><init>()V

    sput-object v0, Lcom/viber/voip/contacts/b/b/i;->a:Lcom/viber/voip/messages/orm/creator/Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/viber/voip/contacts/b/b/e;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/i;->E:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/i;->F:Ljava/util/Set;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/i;->G:Ljava/util/Map;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/ViberApplication;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;IZ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/viber/voip/ViberApplication;",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/contacts/b/b/a/e;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/viber/voip/contacts/b/i;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 34
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/e;

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/b/b/e;-><init>(Lcom/viber/voip/contacts/b/b/a/e;)V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/i;->E:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/i;->F:Ljava/util/Set;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/i;->G:Ljava/util/Map;

    .line 35
    iput p5, p0, Lcom/viber/voip/contacts/b/b/i;->z:I

    .line 36
    iput-boolean p6, p0, Lcom/viber/voip/contacts/b/b/i;->v:Z

    .line 37
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcom/viber/voip/contacts/b/b/i;->j:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/i;->f:Ljava/util/TreeSet;

    .line 38
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/i;->G:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 40
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/e;

    .line 41
    const-string/jumbo v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    iput-boolean v4, p0, Lcom/viber/voip/contacts/b/b/i;->u:Z

    .line 43
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/contacts/b/i;

    .line 44
    if-eqz v1, :cond_0

    .line 45
    iput-boolean v4, p0, Lcom/viber/voip/contacts/b/b/i;->q:Z

    .line 46
    iget-object v3, p0, Lcom/viber/voip/contacts/b/b/i;->f:Ljava/util/TreeSet;

    invoke-virtual {v3, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v3, p0, Lcom/viber/voip/contacts/b/b/i;->E:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/i;->F:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/contacts/b/i;)Lcom/viber/voip/contacts/b/g;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/i;->E:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/g;

    return-object v0
.end method

.method public a(Lcom/viber/voip/contacts/b/g;)V
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/i;->F:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public a(Lcom/viber/voip/contacts/b/i;Lcom/viber/voip/contacts/b/g;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/i;->f:Ljava/util/TreeSet;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcom/viber/voip/contacts/b/b/i;->j:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/i;->f:Ljava/util/TreeSet;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/i;->E:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/i;->f:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method public m()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/viber/voip/contacts/b/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/i;->F:Ljava/util/Set;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/b/i;->i()Lcom/viber/voip/contacts/b/i;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/b/i;->i()Lcom/viber/voip/contacts/b/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 64
    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b/b/i;->i()Lcom/viber/voip/contacts/b/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/i;->c()Ljava/lang/String;

    move-result-object v0

    .line 69
    :cond_0
    return-object v0
.end method

.method public o()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/i;->G:Ljava/util/Map;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ContactInfoEntityImpl [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/contacts/b/b/i;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/i;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", starred="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/contacts/b/b/i;->p:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", viber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/contacts/b/b/i;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lookupKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/i;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", contactHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/contacts/b/b/i;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hasNumbers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/contacts/b/b/i;->u:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", viberNumbers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/i;->f:Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mBlockedNumbers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/b/b/i;->G:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/contacts/b/b/i;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

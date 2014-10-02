.class public Lcom/viber/voip/contacts/b/b/m;
.super Lcom/viber/voip/contacts/b/b/e;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/b/b;
.implements Lcom/viber/voip/contacts/b/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/viber/voip/contacts/b/b/e;-><init>()V

    .line 16
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcom/viber/voip/contacts/b/b/m;->j:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/m;->f:Ljava/util/TreeSet;

    .line 17
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/m;->g:Ljava/util/TreeSet;

    .line 18
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/m;->h:Ljava/util/TreeMap;

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/m;->i:Ljava/util/Set;

    .line 21
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/m;->f:Ljava/util/TreeSet;

    new-instance v1, Lcom/viber/voip/contacts/b/b/a/o;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-direct {v1, p1, v2, v3}, Lcom/viber/voip/contacts/b/b/a/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/m;->g:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v6, p0, Lcom/viber/voip/contacts/b/b/m;->h:Ljava/util/TreeMap;

    new-instance v0, Lcom/viber/voip/contacts/b/b/k;

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    move-object v1, p1

    move-object v2, p1

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/contacts/b/b/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/m;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 25
    return-void
.end method

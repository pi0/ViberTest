.class Lcom/viber/voip/contacts/c/d/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/d/i;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/d/a/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/d/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/a/c;->a:Lcom/viber/voip/contacts/c/d/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Set;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/contacts/b/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 172
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b;

    .line 173
    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/a/c;->a:Lcom/viber/voip/contacts/c/d/a/b;

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/b;->getId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/viber/voip/contacts/c/d/a/b;->a(Lcom/viber/voip/contacts/c/d/a/b;J)J

    .line 174
    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/a/c;->a:Lcom/viber/voip/contacts/c/d/a/b;

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/viber/voip/contacts/c/d/a/b;->a(Lcom/viber/voip/contacts/c/d/a/b;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/c;->a:Lcom/viber/voip/contacts/c/d/a/b;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/d/a/b;->a(Lcom/viber/voip/contacts/c/d/a/b;)V

    .line 177
    :cond_0
    return-void
.end method

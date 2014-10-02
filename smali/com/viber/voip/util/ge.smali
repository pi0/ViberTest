.class Lcom/viber/voip/util/ge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/gi;


# instance fields
.field final synthetic a:Lcom/viber/voip/util/gd;


# direct methods
.method constructor <init>(Lcom/viber/voip/util/gd;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/viber/voip/util/ge;->a:Lcom/viber/voip/util/gd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 197
    iget-object v2, p0, Lcom/viber/voip/util/ge;->a:Lcom/viber/voip/util/gd;

    iget-object v2, v2, Lcom/viber/voip/util/gd;->c:Lcom/viber/voip/util/fz;

    invoke-virtual {v2}, Lcom/viber/voip/util/fz;->d()I

    move-result v2

    if-lez v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/viber/voip/util/ge;->a:Lcom/viber/voip/util/gd;

    iget-object v2, v2, Lcom/viber/voip/util/gd;->c:Lcom/viber/voip/util/fz;

    invoke-static {v2}, Lcom/viber/voip/util/fz;->a(Lcom/viber/voip/util/fz;)Lcom/viber/voip/settings/l;

    move-result-object v2

    const-string/jumbo v3, "recents_count"

    iget-object v4, p0, Lcom/viber/voip/util/ge;->a:Lcom/viber/voip/util/gd;

    iget-object v4, v4, Lcom/viber/voip/util/gd;->c:Lcom/viber/voip/util/fz;

    invoke-virtual {v4}, Lcom/viber/voip/util/fz;->d()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v2, v3, v4}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 200
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, p0, Lcom/viber/voip/util/ge;->a:Lcom/viber/voip/util/gd;

    iget-boolean v0, v0, Lcom/viber/voip/util/gd;->a:Z

    invoke-interface {v2, v3, v4, v0}, Lcom/viber/voip/contacts/c/d/b;->a(JZ)V

    goto :goto_0

    .line 202
    :cond_1
    return-void
.end method

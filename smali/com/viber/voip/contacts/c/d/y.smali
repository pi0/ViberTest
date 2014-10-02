.class Lcom/viber/voip/contacts/c/d/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/d/ap;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/viber/voip/contacts/c/d/m;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/d/m;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/y;->b:Lcom/viber/voip/contacts/c/d/m;

    iput-wide p2, p0, Lcom/viber/voip/contacts/c/d/y;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 316
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/y;->b:Lcom/viber/voip/contacts/c/d/m;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/y;->b:Lcom/viber/voip/contacts/c/d/m;

    iget-object v1, v1, Lcom/viber/voip/contacts/c/d/m;->h:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/c/d/m;->a(Ljava/util/Set;)V

    .line 318
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 319
    iget-wide v1, p0, Lcom/viber/voip/contacts/c/d/y;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/y;->b:Lcom/viber/voip/contacts/c/d/m;

    iget-object v1, v1, Lcom/viber/voip/contacts/c/d/m;->c:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getParticipantManager()Lcom/viber/voip/messages/a/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/viber/voip/messages/a/a;->b(Ljava/util/Set;)V

    .line 322
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/y;->b:Lcom/viber/voip/contacts/c/d/m;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/d/m;->i()V

    .line 323
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/y;->b:Lcom/viber/voip/contacts/c/d/m;

    iget-object v0, v0, Lcom/viber/voip/contacts/c/d/m;->f:Lcom/viber/voip/contacts/c/f/b;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/f/b;->a()V

    .line 324
    return-void
.end method

.class Lcom/viber/voip/contacts/c/d/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/d/ap;


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/viber/voip/contacts/c/d/ap;

.field final synthetic d:Lcom/viber/voip/contacts/c/d/m;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/d/m;JLjava/lang/String;Lcom/viber/voip/contacts/c/d/ap;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/s;->d:Lcom/viber/voip/contacts/c/d/m;

    iput-wide p2, p0, Lcom/viber/voip/contacts/c/d/s;->a:J

    iput-object p4, p0, Lcom/viber/voip/contacts/c/d/s;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/viber/voip/contacts/c/d/s;->c:Lcom/viber/voip/contacts/c/d/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 425
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/s;->d:Lcom/viber/voip/contacts/c/d/m;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/d/m;->j()Lcom/viber/voip/contacts/c/d/a;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/contacts/c/d/s;->a:J

    iget-object v3, p0, Lcom/viber/voip/contacts/c/d/s;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/contacts/c/d/a;->a(JLjava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/s;->d:Lcom/viber/voip/contacts/c/d/m;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/s;->d:Lcom/viber/voip/contacts/c/d/m;

    iget-object v1, v1, Lcom/viber/voip/contacts/c/d/m;->h:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/c/d/m;->a(Ljava/util/Set;)V

    .line 427
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/s;->c:Lcom/viber/voip/contacts/c/d/ap;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/s;->c:Lcom/viber/voip/contacts/c/d/ap;

    invoke-interface {v0}, Lcom/viber/voip/contacts/c/d/ap;->a()V

    .line 430
    :cond_0
    return-void
.end method

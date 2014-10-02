.class Lcom/viber/voip/contacts/c/f/a/a/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/f/a/a/h;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/f/a/a/af;

.field final synthetic b:Lcom/viber/voip/contacts/c/f/a/a/al;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/f/a/a/al;Lcom/viber/voip/contacts/c/f/a/a/af;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/a/a/ap;->b:Lcom/viber/voip/contacts/c/f/a/a/al;

    iput-object p2, p0, Lcom/viber/voip/contacts/c/f/a/a/ap;->a:Lcom/viber/voip/contacts/c/f/a/a/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 239
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ap;->b:Lcom/viber/voip/contacts/c/f/a/a/al;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/f/a/a/al;->d()V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ap;->a:Lcom/viber/voip/contacts/c/f/a/a/af;

    iget-boolean v0, v0, Lcom/viber/voip/contacts/c/f/a/a/af;->a:Z

    if-nez v0, :cond_3

    .line 241
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ap;->b:Lcom/viber/voip/contacts/c/f/a/a/al;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/a/a/al;->e(Lcom/viber/voip/contacts/c/f/a/a/al;)Lcom/viber/voip/contacts/c/f/a/a/ab;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/voip/contacts/c/f/a/a/ap;->b:Lcom/viber/voip/contacts/c/f/a/a/al;

    invoke-static {v2}, Lcom/viber/voip/contacts/c/f/a/a/al;->a(Lcom/viber/voip/contacts/c/f/a/a/al;)Z

    move-result v2

    iget-object v3, p0, Lcom/viber/voip/contacts/c/f/a/a/ap;->b:Lcom/viber/voip/contacts/c/f/a/a/al;

    invoke-static {v3}, Lcom/viber/voip/contacts/c/f/a/a/al;->d(Lcom/viber/voip/contacts/c/f/a/a/al;)Lcom/viber/voip/contacts/c/f/a/a/ae;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/contacts/c/f/a/a/ap;->a:Lcom/viber/voip/contacts/c/f/a/a/af;

    iget-wide v4, v4, Lcom/viber/voip/contacts/c/f/a/a/af;->c:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/viber/voip/contacts/c/f/a/a/ab;->a(ZLcom/viber/voip/contacts/c/f/a/a/ae;J)V

    .line 246
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ap;->b:Lcom/viber/voip/contacts/c/f/a/a/al;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/a/a/al;->f(Lcom/viber/voip/contacts/c/f/a/a/al;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ap;->b:Lcom/viber/voip/contacts/c/f/a/a/al;

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/c/f/a/a/al;->c(Lcom/viber/voip/contacts/c/f/a/a/al;Z)Z

    .line 248
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ap;->a:Lcom/viber/voip/contacts/c/f/a/a/af;

    iget-boolean v0, v0, Lcom/viber/voip/contacts/c/f/a/a/af;->a:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ap;->a:Lcom/viber/voip/contacts/c/f/a/a/af;

    iget-wide v2, v0, Lcom/viber/voip/contacts/c/f/a/a/af;->c:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    move v0, v1

    .line 249
    :goto_1
    iget-object v2, p0, Lcom/viber/voip/contacts/c/f/a/a/ap;->b:Lcom/viber/voip/contacts/c/f/a/a/al;

    invoke-static {v2}, Lcom/viber/voip/contacts/c/f/a/a/al;->g(Lcom/viber/voip/contacts/c/f/a/a/al;)Lcom/viber/voip/contacts/c/d/at;

    move-result-object v2

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    :cond_1
    invoke-interface {v2, v1}, Lcom/viber/voip/contacts/c/d/at;->a(I)V

    .line 251
    :cond_2
    return-void

    .line 243
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ap;->b:Lcom/viber/voip/contacts/c/f/a/a/al;

    sget-object v2, Lcom/viber/voip/contacts/c/f/a/a/au;->f:Lcom/viber/voip/contacts/c/f/a/a/au;

    invoke-static {v0, v2}, Lcom/viber/voip/contacts/c/f/a/a/al;->a(Lcom/viber/voip/contacts/c/f/a/a/al;Lcom/viber/voip/contacts/c/f/a/a/au;)V

    goto :goto_0

    .line 248
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

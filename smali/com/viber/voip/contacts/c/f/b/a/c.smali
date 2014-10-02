.class Lcom/viber/voip/contacts/c/f/b/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/f/b/af;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/f/b/a/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/f/b/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/b/a/c;->a:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IZLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 351
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/c;->a:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/b/a/a;->n(Lcom/viber/voip/contacts/c/f/b/a/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/c;->a:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/b/a/a;->m(Lcom/viber/voip/contacts/c/f/b/a/a;)V

    .line 367
    :goto_0
    return-void

    .line 354
    :cond_0
    if-le p1, v1, :cond_1

    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/c;->a:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/b/a/a;->k(Lcom/viber/voip/contacts/c/f/b/a/a;)I

    move-result v0

    if-nez v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/c;->a:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/b/a/a;->m(Lcom/viber/voip/contacts/c/f/b/a/a;)V

    goto :goto_0

    .line 357
    :cond_1
    if-le p1, v1, :cond_2

    .line 359
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/c;->a:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/b/a/a;->m(Lcom/viber/voip/contacts/c/f/b/a/a;)V

    goto :goto_0

    .line 360
    :cond_2
    if-ne p1, v1, :cond_3

    .line 362
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/c;->a:Lcom/viber/voip/contacts/c/f/b/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1, p3}, Lcom/viber/voip/contacts/c/f/b/a/a;->a(Lcom/viber/voip/contacts/c/f/b/a/a;ZLjava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/c;->a:Lcom/viber/voip/contacts/c/f/b/a/a;

    sget-object v1, Lcom/viber/voip/contacts/c/f/b/a/m;->d:Lcom/viber/voip/contacts/c/f/b/a/m;

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/c/f/b/a/a;->a(Lcom/viber/voip/contacts/c/f/b/a/a;Lcom/viber/voip/contacts/c/f/b/a/m;)V

    goto :goto_0
.end method

.class Lcom/viber/voip/contacts/c/f/b/a/l;
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
    .line 330
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/b/a/l;->a:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IZLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 334
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/l;->a:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/b/a/a;->k(Lcom/viber/voip/contacts/c/f/b/a/a;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/l;->a:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/b/a/a;->l(Lcom/viber/voip/contacts/c/f/b/a/a;)V

    .line 342
    :goto_0
    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/l;->a:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/b/a/a;->m(Lcom/viber/voip/contacts/c/f/b/a/a;)V

    goto :goto_0
.end method

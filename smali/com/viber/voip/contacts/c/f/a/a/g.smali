.class Lcom/viber/voip/contacts/c/f/a/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/f/b/ab;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/viber/voip/contacts/c/f/a/a/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/f/a/a/a;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/a/a/g;->b:Lcom/viber/voip/contacts/c/f/a/a/a;

    iput-boolean p2, p0, Lcom/viber/voip/contacts/c/f/a/a/g;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 410
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/g;->b:Lcom/viber/voip/contacts/c/f/a/a/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/a/a/a;->a(Lcom/viber/voip/contacts/c/f/a/a/a;)Lcom/viber/voip/contacts/c/f/a/a/j;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/contacts/c/f/a/a/g;->a:Z

    invoke-interface {v0, v1}, Lcom/viber/voip/contacts/c/f/a/a/j;->c(Z)V

    .line 411
    invoke-static {}, Lcom/viber/service/contacts/sync/a;->a()Lcom/viber/service/contacts/sync/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/service/contacts/sync/a;->c()V

    .line 412
    return-void
.end method

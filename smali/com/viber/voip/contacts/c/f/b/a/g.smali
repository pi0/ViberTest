.class Lcom/viber/voip/contacts/c/f/b/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/f/b/a/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/f/b/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/b/a/g;->a:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/g;->a:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/b/a/a;->g(Lcom/viber/voip/contacts/c/f/b/a/a;)Lcom/viber/voip/contacts/c/f/b/q;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/a/g;->a:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v1}, Lcom/viber/voip/contacts/c/f/b/a/a;->e(Lcom/viber/voip/contacts/c/f/b/a/a;)I

    move-result v1

    iget-object v2, p0, Lcom/viber/voip/contacts/c/f/b/a/g;->a:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v2}, Lcom/viber/voip/contacts/c/f/b/a/a;->f(Lcom/viber/voip/contacts/c/f/b/a/a;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/contacts/c/f/b/q;->a(IZ)V

    .line 113
    return-void
.end method

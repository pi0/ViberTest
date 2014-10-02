.class Lcom/viber/voip/contacts/c/d/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/d/a/f;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/d/a/f;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/a/g;->a:Lcom/viber/voip/contacts/c/d/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 180
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/g;->a:Lcom/viber/voip/contacts/c/d/a/f;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/d/a/f;->a(Lcom/viber/voip/contacts/c/d/a/f;)Lcom/viber/voip/contacts/c/d/a/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/c/d/a/i;->a(Z)V

    .line 181
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/g;->a:Lcom/viber/voip/contacts/c/d/a/f;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/d/a/f;->b(Lcom/viber/voip/contacts/c/d/a/f;)Lcom/viber/voip/contacts/c/f/a/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/c/f/a/a/a;->a(Z)V

    .line 182
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/g;->a:Lcom/viber/voip/contacts/c/d/a/f;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/d/a/f;->d(Lcom/viber/voip/contacts/c/d/a/f;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/a/g;->a:Lcom/viber/voip/contacts/c/d/a/f;

    invoke-static {v1}, Lcom/viber/voip/contacts/c/d/a/f;->c(Lcom/viber/voip/contacts/c/d/a/f;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0x1499700

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 183
    return-void
.end method

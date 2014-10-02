.class Lcom/viber/voip/contacts/c/f/b/a/b;
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
    .line 72
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/b/a/b;->a:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 76
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/b;->a:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/b/a/a;->a(Lcom/viber/voip/contacts/c/f/b/a/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/b;->a:Lcom/viber/voip/contacts/c/f/b/a/a;

    const-string/jumbo v1, "firstSyncDelay: mFirstSync timout"

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/c/f/b/a/a;->a(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/b;->a:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/b/a/a;->b(Lcom/viber/voip/contacts/c/f/b/a/a;)Lcom/viber/voip/contacts/c/f/a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/c/f/a;->a(I)V

    .line 79
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/b;->a:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v0, v3}, Lcom/viber/voip/contacts/c/f/b/a/a;->a(Lcom/viber/voip/contacts/c/f/b/a/a;Z)Z

    .line 80
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/b;->a:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v0, v3}, Lcom/viber/voip/contacts/c/f/b/a/a;->b(Lcom/viber/voip/contacts/c/f/b/a/a;Z)Z

    .line 81
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/b;->a:Lcom/viber/voip/contacts/c/f/b/a/a;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/contacts/c/f/b/a/a;->a(Lcom/viber/voip/contacts/c/f/b/a/a;JZ)V

    .line 83
    :cond_0
    return-void
.end method

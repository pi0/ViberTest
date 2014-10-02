.class Lcom/viber/voip/contacts/c/f/b/a/i;
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
    .line 144
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/b/a/i;->a:Lcom/viber/voip/contacts/c/f/b/a/a;

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
    .line 148
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/i;->a:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/b/a/a;->i(Lcom/viber/voip/contacts/c/f/b/a/a;)Lcom/viber/voip/contacts/c/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/i;->a:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v0, p3}, Lcom/viber/voip/contacts/c/f/b/a/a;->a(Lcom/viber/voip/contacts/c/f/b/a/a;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/i;->a:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v0, p1}, Lcom/viber/voip/contacts/c/f/b/a/a;->a(Lcom/viber/voip/contacts/c/f/b/a/a;I)I

    .line 152
    :cond_0
    return-void
.end method

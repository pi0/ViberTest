.class final Lcom/viber/voip/contacts/c/g;
.super Lcom/viber/voip/contacts/c/r;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/t;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/t;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/viber/voip/contacts/c/g;->a:Lcom/viber/voip/contacts/c/t;

    iput-object p2, p0, Lcom/viber/voip/contacts/c/g;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/contacts/c/g;->c:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/c/r;-><init>(Lcom/viber/voip/contacts/c/b;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 307
    iget-object v0, p0, Lcom/viber/voip/contacts/c/g;->a:Lcom/viber/voip/contacts/c/t;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/g;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v2}, Lcom/viber/voip/contacts/c/t;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 301
    iget-object v0, p0, Lcom/viber/voip/contacts/c/g;->a:Lcom/viber/voip/contacts/c/t;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/g;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/viber/voip/contacts/c/g;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/viber/voip/contacts/c/a;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/contacts/c/g;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/contacts/c/t;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 302
    return-void
.end method

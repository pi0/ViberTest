.class Lcom/viber/voip/contacts/a/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/a/o;

.field final synthetic b:Lcom/viber/voip/contacts/a/p;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/a/p;Lcom/viber/voip/contacts/a/o;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/viber/voip/contacts/a/r;->b:Lcom/viber/voip/contacts/a/p;

    iput-object p2, p0, Lcom/viber/voip/contacts/a/r;->a:Lcom/viber/voip/contacts/a/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lcom/viber/voip/contacts/a/r;->a:Lcom/viber/voip/contacts/a/o;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/a/o;->a()Lcom/viber/voip/contacts/b/e;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/viber/voip/contacts/a/r;->b:Lcom/viber/voip/contacts/a/p;

    iget-object v1, v1, Lcom/viber/voip/contacts/a/p;->a:Lcom/viber/voip/contacts/a/n;

    invoke-static {v1}, Lcom/viber/voip/contacts/a/n;->b(Lcom/viber/voip/contacts/a/n;)Lcom/viber/voip/contacts/a/s;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/viber/voip/contacts/a/r;->b:Lcom/viber/voip/contacts/a/p;

    iget-object v1, v1, Lcom/viber/voip/contacts/a/p;->a:Lcom/viber/voip/contacts/a/n;

    invoke-static {v1}, Lcom/viber/voip/contacts/a/n;->b(Lcom/viber/voip/contacts/a/n;)Lcom/viber/voip/contacts/a/s;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/viber/voip/contacts/a/s;->a(Lcom/viber/voip/contacts/b/e;)V

    .line 230
    :cond_0
    return-void
.end method

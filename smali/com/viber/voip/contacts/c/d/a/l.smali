.class Lcom/viber/voip/contacts/c/d/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/ff;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/d/a/k;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/d/a/k;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/a/l;->a:Lcom/viber/voip/contacts/c/d/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;Ljava/util/List;[Landroid/content/ContentProviderResult;Ljava/lang/Exception;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;[",
            "Landroid/content/ContentProviderResult;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/l;->a:Lcom/viber/voip/contacts/c/d/a/k;

    iget-object v0, v0, Lcom/viber/voip/contacts/c/d/a/k;->a:Lcom/viber/voip/contacts/c/d/a/i;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/d/a/i;->b(Lcom/viber/voip/contacts/c/d/a/i;)V

    .line 188
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/l;->a:Lcom/viber/voip/contacts/c/d/a/k;

    iget-object v0, v0, Lcom/viber/voip/contacts/c/d/a/k;->a:Lcom/viber/voip/contacts/c/d/a/i;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/d/a/i;->c(Lcom/viber/voip/contacts/c/d/a/i;)Lcom/viber/voip/contacts/c/d/a/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/l;->a:Lcom/viber/voip/contacts/c/d/a/k;

    iget-object v0, v0, Lcom/viber/voip/contacts/c/d/a/k;->a:Lcom/viber/voip/contacts/c/d/a/i;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/d/a/i;->c(Lcom/viber/voip/contacts/c/d/a/i;)Lcom/viber/voip/contacts/c/d/a/m;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/contacts/c/d/a/m;->o()V

    .line 191
    :cond_0
    return-void
.end method

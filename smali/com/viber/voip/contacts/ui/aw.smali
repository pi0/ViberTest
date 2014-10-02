.class Lcom/viber/voip/contacts/ui/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/gallery/animation/b;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/ui/ap;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/ap;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/aw;->a:Lcom/viber/voip/contacts/ui/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 257
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/aw;->a:Lcom/viber/voip/contacts/ui/ap;

    invoke-static {v0}, Lcom/viber/voip/contacts/ui/ap;->a(Lcom/viber/voip/contacts/ui/ap;)Lcom/viber/voip/contacts/ui/bd;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/viber/voip/contacts/ui/bd;->a(I)Landroid/util/Pair;

    move-result-object v1

    .line 258
    if-eqz v1, :cond_1

    .line 259
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/aw;->a:Lcom/viber/voip/contacts/ui/ap;

    invoke-static {v0}, Lcom/viber/voip/contacts/ui/ap;->b(Lcom/viber/voip/contacts/ui/ap;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/aw;->a:Lcom/viber/voip/contacts/ui/ap;

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcom/viber/voip/contacts/ui/ap;->a(Lcom/viber/voip/contacts/ui/ap;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/aw;->a:Lcom/viber/voip/contacts/ui/ap;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/ap;->c:Lcom/viber/voip/ui/aa;

    invoke-virtual {v0}, Lcom/viber/voip/ui/aa;->b()V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/aw;->a:Lcom/viber/voip/contacts/ui/ap;

    iget-object v2, v0, Lcom/viber/voip/contacts/ui/ap;->a:Lcom/viber/voip/contacts/ui/cb;

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/viber/voip/contacts/b/e;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/viber/voip/contacts/ui/cb;->a(Lcom/viber/voip/contacts/b/e;Ljava/lang/String;)V

    .line 265
    :cond_1
    return-void
.end method

.method public b(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 266
    return-void
.end method

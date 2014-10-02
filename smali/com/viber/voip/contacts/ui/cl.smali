.class Lcom/viber/voip/contacts/ui/cl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/viber/voip/contacts/ui/ck;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/ck;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 628
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/cl;->c:Lcom/viber/voip/contacts/ui/ck;

    iput-object p2, p0, Lcom/viber/voip/contacts/ui/cl;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/contacts/ui/cl;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 631
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cl;->c:Lcom/viber/voip/contacts/ui/ck;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/ck;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 632
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cl;->c:Lcom/viber/voip/contacts/ui/ck;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/ck;->b:Lcom/viber/voip/contacts/ui/cb;

    const-string/jumbo v1, "check_number_dialog"

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/ui/cb;->b(Lcom/viber/voip/contacts/ui/cb;Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cl;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 635
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/cl;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 636
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/cl;->c:Lcom/viber/voip/contacts/ui/ck;

    iget-object v1, v1, Lcom/viber/voip/contacts/ui/ck;->b:Lcom/viber/voip/contacts/ui/cb;

    iget-object v1, v1, Lcom/viber/voip/contacts/ui/cb;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 641
    :goto_0
    return-void

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cl;->c:Lcom/viber/voip/contacts/ui/ck;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/ck;->b:Lcom/viber/voip/contacts/ui/cb;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/cb;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/cl;->b:Ljava/lang/String;

    new-instance v2, Lcom/viber/voip/contacts/ui/cn;

    iget-object v3, p0, Lcom/viber/voip/contacts/ui/cl;->c:Lcom/viber/voip/contacts/ui/ck;

    iget-object v3, v3, Lcom/viber/voip/contacts/ui/ck;->b:Lcom/viber/voip/contacts/ui/cb;

    invoke-direct {v2, v3}, Lcom/viber/voip/contacts/ui/cn;-><init>(Lcom/viber/voip/contacts/ui/cb;)V

    invoke-virtual {v2, v4}, Lcom/viber/voip/contacts/ui/cn;->a(Z)Lcom/viber/voip/contacts/ui/cn;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cl;->c:Lcom/viber/voip/contacts/ui/ck;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/ck;->b:Lcom/viber/voip/contacts/ui/cb;

    invoke-static {v0}, Lcom/viber/voip/contacts/ui/cb;->c(Lcom/viber/voip/contacts/ui/cb;)Lcom/viber/voip/contacts/ui/co;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/viber/voip/contacts/ui/cl;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/viber/voip/contacts/ui/co;->a(ZLcom/viber/voip/contacts/b/e;Ljava/lang/String;Z)V

    goto :goto_0
.end method

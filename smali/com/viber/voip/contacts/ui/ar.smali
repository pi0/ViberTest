.class Lcom/viber/voip/contacts/ui/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/viber/voip/contacts/b/e;

.field final synthetic c:Lcom/viber/voip/contacts/ui/ap;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/ap;Landroid/view/View;Lcom/viber/voip/contacts/b/e;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 663
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/ar;->c:Lcom/viber/voip/contacts/ui/ap;

    iput-object p2, p0, Lcom/viber/voip/contacts/ui/ar;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/viber/voip/contacts/ui/ar;->b:Lcom/viber/voip/contacts/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 666
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ar;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/a/l;

    .line 667
    iget-object v1, v0, Lcom/viber/voip/contacts/a/l;->h:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 668
    :goto_0
    iget-object v4, v0, Lcom/viber/voip/contacts/a/l;->p:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    move v4, v2

    .line 670
    :goto_1
    iget-object v0, v0, Lcom/viber/voip/contacts/a/l;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    if-eqz v1, :cond_3

    .line 672
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ar;->c:Lcom/viber/voip/contacts/ui/ap;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/ap;->a:Lcom/viber/voip/contacts/ui/cb;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ar;->b:Lcom/viber/voip/contacts/b/e;

    invoke-virtual {v0, v2, v1, v4}, Lcom/viber/voip/contacts/ui/cb;->a(ZLcom/viber/voip/contacts/b/e;Z)V

    .line 677
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v3

    .line 667
    goto :goto_0

    :cond_2
    move v4, v3

    .line 668
    goto :goto_1

    .line 674
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ar;->c:Lcom/viber/voip/contacts/ui/ap;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/ap;->a:Lcom/viber/voip/contacts/ui/cb;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ar;->b:Lcom/viber/voip/contacts/b/e;

    invoke-virtual {v0, v3, v1, v4}, Lcom/viber/voip/contacts/ui/cb;->a(ZLcom/viber/voip/contacts/b/e;Z)V

    goto :goto_2
.end method

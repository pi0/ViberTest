.class Lcom/viber/voip/contacts/ui/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/contacts/b/d;

.field final synthetic c:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;Ljava/lang/String;Lcom/viber/voip/contacts/b/d;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 728
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/d;->c:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    iput-object p2, p0, Lcom/viber/voip/contacts/ui/d;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/contacts/ui/d;->b:Lcom/viber/voip/contacts/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 731
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/d;->c:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 732
    new-instance v1, Lcom/viber/voip/contacts/ui/e;

    invoke-direct {v1, p0, v0}, Lcom/viber/voip/contacts/ui/e;-><init>(Lcom/viber/voip/contacts/ui/d;Landroid/content/Context;)V

    .line 741
    iget-object v2, p0, Lcom/viber/voip/contacts/ui/d;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 742
    iget-object v2, p0, Lcom/viber/voip/contacts/ui/d;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/viber/voip/util/ah;->a(Ljava/lang/String;)V

    .line 744
    :cond_0
    iget-object v2, p0, Lcom/viber/voip/contacts/ui/d;->b:Lcom/viber/voip/contacts/b/d;

    invoke-static {v0, v2, v1}, Lcom/viber/voip/util/w;->a(Landroid/content/Context;Lcom/viber/voip/contacts/b/b;Lcom/viber/voip/util/ah;)V

    .line 745
    return-void
.end method

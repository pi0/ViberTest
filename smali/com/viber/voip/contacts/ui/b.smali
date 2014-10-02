.class Lcom/viber/voip/contacts/ui/b;
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
    .line 705
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/b;->c:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    iput-object p2, p0, Lcom/viber/voip/contacts/ui/b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/contacts/ui/b;->b:Lcom/viber/voip/contacts/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 708
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/b;->c:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 709
    new-instance v1, Lcom/viber/voip/contacts/ui/c;

    invoke-direct {v1, p0, v0}, Lcom/viber/voip/contacts/ui/c;-><init>(Lcom/viber/voip/contacts/ui/b;Landroid/app/Activity;)V

    .line 721
    iget-object v2, p0, Lcom/viber/voip/contacts/ui/b;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 722
    iget-object v2, p0, Lcom/viber/voip/contacts/ui/b;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/viber/voip/util/ah;->a(Ljava/lang/String;)V

    .line 724
    :cond_0
    iget-object v2, p0, Lcom/viber/voip/contacts/ui/b;->b:Lcom/viber/voip/contacts/b/d;

    invoke-static {v0, v2, v1}, Lcom/viber/voip/util/w;->a(Landroid/content/Context;Lcom/viber/voip/contacts/b/b;Lcom/viber/voip/util/ah;)V

    .line 725
    return-void
.end method

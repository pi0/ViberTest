.class Lcom/viber/voip/calls/ui/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/calls/ui/PhoneFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/calls/ui/PhoneFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/viber/voip/calls/ui/d;->a:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter

    .prologue
    .line 329
    iget-object v0, p0, Lcom/viber/voip/calls/ui/d;->a:Lcom/viber/voip/calls/ui/PhoneFragment;

    const-string/jumbo v1, "onLongClick del"

    invoke-static {v0, v1}, Lcom/viber/voip/calls/ui/PhoneFragment;->a(Lcom/viber/voip/calls/ui/PhoneFragment;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/viber/voip/calls/ui/d;->a:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-static {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->d(Lcom/viber/voip/calls/ui/PhoneFragment;)V

    .line 331
    iget-object v0, p0, Lcom/viber/voip/calls/ui/d;->a:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-static {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->b(Lcom/viber/voip/calls/ui/PhoneFragment;)Lcom/viber/voip/widget/PhoneTypeField;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/PhoneTypeField;->setPhoneFieldText(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/viber/voip/calls/ui/d;->a:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-static {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->e(Lcom/viber/voip/calls/ui/PhoneFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 333
    iget-object v0, p0, Lcom/viber/voip/calls/ui/d;->a:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-virtual {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 334
    iget-object v0, p0, Lcom/viber/voip/calls/ui/d;->a:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-static {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->c(Lcom/viber/voip/calls/ui/PhoneFragment;)V

    .line 335
    const/4 v0, 0x1

    return v0
.end method

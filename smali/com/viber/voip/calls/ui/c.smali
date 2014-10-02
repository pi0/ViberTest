.class Lcom/viber/voip/calls/ui/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/calls/ui/PhoneFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/calls/ui/PhoneFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/viber/voip/calls/ui/c;->a:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 315
    iget-object v0, p0, Lcom/viber/voip/calls/ui/c;->a:Lcom/viber/voip/calls/ui/PhoneFragment;

    const-string/jumbo v1, "onClick del"

    invoke-static {v0, v1}, Lcom/viber/voip/calls/ui/PhoneFragment;->a(Lcom/viber/voip/calls/ui/PhoneFragment;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/viber/voip/calls/ui/c;->a:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-static {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->a(Lcom/viber/voip/calls/ui/PhoneFragment;)V

    .line 317
    iget-object v0, p0, Lcom/viber/voip/calls/ui/c;->a:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-static {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->b(Lcom/viber/voip/calls/ui/PhoneFragment;)Lcom/viber/voip/widget/PhoneTypeField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/widget/PhoneTypeField;->getPhoneFieldEditable()Landroid/text/Editable;

    move-result-object v0

    .line 318
    iget-object v1, p0, Lcom/viber/voip/calls/ui/c;->a:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-static {v1}, Lcom/viber/voip/calls/ui/PhoneFragment;->b(Lcom/viber/voip/calls/ui/PhoneFragment;)Lcom/viber/voip/widget/PhoneTypeField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/widget/PhoneTypeField;->getPhoneFieldLength()I

    move-result v1

    .line 319
    if-lez v1, :cond_0

    .line 320
    add-int/lit8 v2, v1, -0x1

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v1, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/calls/ui/c;->a:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-static {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->c(Lcom/viber/voip/calls/ui/PhoneFragment;)V

    .line 323
    return-void
.end method

.class Lcom/viber/voip/calls/ui/e;
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
    .line 345
    iput-object p1, p0, Lcom/viber/voip/calls/ui/e;->a:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 348
    iget-object v0, p0, Lcom/viber/voip/calls/ui/e;->a:Lcom/viber/voip/calls/ui/PhoneFragment;

    const-string/jumbo v1, "onClick add"

    invoke-static {v0, v1}, Lcom/viber/voip/calls/ui/PhoneFragment;->a(Lcom/viber/voip/calls/ui/PhoneFragment;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/viber/voip/calls/ui/e;->a:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-static {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->a(Lcom/viber/voip/calls/ui/PhoneFragment;)V

    .line 351
    iget-object v0, p0, Lcom/viber/voip/calls/ui/e;->a:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-static {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->b(Lcom/viber/voip/calls/ui/PhoneFragment;)Lcom/viber/voip/widget/PhoneTypeField;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/calls/ui/e;->a:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-static {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->b(Lcom/viber/voip/calls/ui/PhoneFragment;)Lcom/viber/voip/widget/PhoneTypeField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/widget/PhoneTypeField;->getPhoneFieldEditable()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/calls/ui/e;->a:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-static {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->b(Lcom/viber/voip/calls/ui/PhoneFragment;)Lcom/viber/voip/widget/PhoneTypeField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/widget/PhoneTypeField;->getPhoneFieldEditable()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/viber/voip/calls/ui/e;->a:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->b(Lcom/viber/voip/calls/ui/PhoneFragment;Ljava/lang/String;)V

    .line 358
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->g:Lcom/viber/voip/a/ae;

    invoke-virtual {v1}, Lcom/viber/voip/a/ae;->d()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_0
.end method

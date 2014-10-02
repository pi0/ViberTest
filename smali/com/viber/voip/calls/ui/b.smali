.class Lcom/viber/voip/calls/ui/b;
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
    .line 300
    iput-object p1, p0, Lcom/viber/voip/calls/ui/b;->a:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter

    .prologue
    .line 303
    iget-object v0, p0, Lcom/viber/voip/calls/ui/b;->a:Lcom/viber/voip/calls/ui/PhoneFragment;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/viber/voip/calls/ui/PhoneFragment;->b(I)V

    .line 304
    iget-object v0, p0, Lcom/viber/voip/calls/ui/b;->a:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-static {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->a(Lcom/viber/voip/calls/ui/PhoneFragment;)V

    .line 305
    iget-object v0, p0, Lcom/viber/voip/calls/ui/b;->a:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-static {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->b(Lcom/viber/voip/calls/ui/PhoneFragment;)Lcom/viber/voip/widget/PhoneTypeField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/widget/PhoneTypeField;->getPhoneFieldEditable()Landroid/text/Editable;

    move-result-object v0

    .line 306
    const-string/jumbo v1, "+"

    invoke-interface {v0, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 307
    iget-object v0, p0, Lcom/viber/voip/calls/ui/b;->a:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-static {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->c(Lcom/viber/voip/calls/ui/PhoneFragment;)V

    .line 308
    const/4 v0, 0x1

    return v0
.end method

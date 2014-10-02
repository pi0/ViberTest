.class Lcom/viber/voip/settings/ui/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/settings/ui/j;


# direct methods
.method constructor <init>(Lcom/viber/voip/settings/ui/j;)V
    .locals 0
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lcom/viber/voip/settings/ui/q;->a:Lcom/viber/voip/settings/ui/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 516
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/viber/voip/settings/ui/q;->a:Lcom/viber/voip/settings/ui/j;

    invoke-virtual {v1}, Lcom/viber/voip/settings/ui/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/viber/voip/sms/SmsReplyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 517
    const-string/jumbo v1, "number"

    const-string/jumbo v2, "+375291196263"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    const-string/jumbo v1, "sms_body"

    const-string/jumbo v2, "Big long messsage from some user"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    sput-boolean v3, Lcom/viber/voip/sms/SmsReplyActivity;->a:Z

    .line 520
    iget-object v1, p0, Lcom/viber/voip/settings/ui/q;->a:Lcom/viber/voip/settings/ui/j;

    invoke-virtual {v1, v0}, Lcom/viber/voip/settings/ui/j;->startActivity(Landroid/content/Intent;)V

    .line 521
    return v3
.end method

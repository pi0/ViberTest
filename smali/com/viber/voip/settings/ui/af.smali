.class Lcom/viber/voip/settings/ui/af;
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
    .line 697
    iput-object p1, p0, Lcom/viber/voip/settings/ui/af;->a:Lcom/viber/voip/settings/ui/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter

    .prologue
    .line 700
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.CORRUPTED_UPGRADE_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 701
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 702
    iget-object v1, p0, Lcom/viber/voip/settings/ui/af;->a:Lcom/viber/voip/settings/ui/j;

    invoke-virtual {v1, v0}, Lcom/viber/voip/settings/ui/j;->startActivity(Landroid/content/Intent;)V

    .line 703
    const/4 v0, 0x1

    return v0
.end method

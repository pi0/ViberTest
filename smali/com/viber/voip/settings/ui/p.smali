.class Lcom/viber/voip/settings/ui/p;
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
    .line 501
    iput-object p1, p0, Lcom/viber/voip/settings/ui/p;->a:Lcom/viber/voip/settings/ui/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter

    .prologue
    .line 504
    iget-object v0, p0, Lcom/viber/voip/settings/ui/p;->a:Lcom/viber/voip/settings/ui/j;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.ENTER_DETAILS_SCREEN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/settings/ui/j;->startActivity(Landroid/content/Intent;)V

    .line 505
    const/4 v0, 0x1

    return v0
.end method

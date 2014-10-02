.class Lcom/viber/voip/settings/ui/an;
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
    .line 897
    iput-object p1, p0, Lcom/viber/voip/settings/ui/an;->a:Lcom/viber/voip/settings/ui/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter

    .prologue
    .line 900
    iget-object v0, p0, Lcom/viber/voip/settings/ui/an;->a:Lcom/viber/voip/settings/ui/j;

    iget-object v0, v0, Lcom/viber/voip/settings/ui/j;->d:Landroid/app/Activity;

    const v1, 0x7f0c03ad

    const v2, 0x7f0c064a

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILjava/lang/Runnable;)Landroid/content/DialogInterface;

    .line 901
    const/4 v0, 0x1

    return v0
.end method

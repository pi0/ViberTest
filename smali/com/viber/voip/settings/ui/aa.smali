.class Lcom/viber/voip/settings/ui/aa;
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
    .line 652
    iput-object p1, p0, Lcom/viber/voip/settings/ui/aa;->a:Lcom/viber/voip/settings/ui/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter

    .prologue
    .line 655
    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v0

    const-string/jumbo v1, "com.viber.voip.action.vo_promotion_free_call"

    invoke-virtual {v0, v1}, Lcom/viber/voip/viberout/e;->a(Ljava/lang/String;)V

    .line 656
    const/4 v0, 0x1

    return v0
.end method

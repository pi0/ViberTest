.class Lcom/viber/voip/settings/ui/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/settings/ui/av;


# direct methods
.method constructor <init>(Lcom/viber/voip/settings/ui/av;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/viber/voip/settings/ui/aw;->a:Lcom/viber/voip/settings/ui/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 104
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->ar()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    iget-object v0, p0, Lcom/viber/voip/settings/ui/aw;->a:Lcom/viber/voip/settings/ui/av;

    invoke-static {}, Lcom/viber/voip/settings/j;->aq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/settings/ui/av;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/PreferenceWithImage;

    .line 107
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/PreferenceWithImage;->a(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/PreferenceWithImage;->setSummary(Ljava/lang/CharSequence;)V

    .line 111
    :cond_0
    return-void
.end method

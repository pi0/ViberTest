.class Lcom/viber/voip/settings/ui/bu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/settings/ui/bj;


# direct methods
.method constructor <init>(Lcom/viber/voip/settings/ui/bj;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/viber/voip/settings/ui/bu;->a:Lcom/viber/voip/settings/ui/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 278
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getFacebookManager()Lcom/viber/voip/messages/extras/fb/s;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/fb/s;->f()Ljava/lang/String;

    move-result-object v1

    .line 283
    iget-object v2, p0, Lcom/viber/voip/settings/ui/bu;->a:Lcom/viber/voip/settings/ui/bj;

    invoke-static {}, Lcom/viber/voip/settings/j;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/viber/voip/settings/ui/bj;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/fb/s;->b()Lcom/viber/voip/messages/extras/fb/ah;

    move-result-object v0

    sget-object v3, Lcom/viber/voip/messages/extras/fb/ah;->d:Lcom/viber/voip/messages/extras/fb/ah;

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/viber/voip/settings/ui/bu;->a:Lcom/viber/voip/settings/ui/bj;

    const v3, 0x7f0c04de

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/viber/voip/settings/ui/bj;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 287
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bu;->a:Lcom/viber/voip/settings/ui/bj;

    const v1, 0x7f0c0450

    invoke-virtual {v0, v1}, Lcom/viber/voip/settings/ui/bj;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

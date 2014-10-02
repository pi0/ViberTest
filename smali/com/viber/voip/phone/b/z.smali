.class Lcom/viber/voip/phone/b/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/phone/b/y;


# direct methods
.method constructor <init>(Lcom/viber/voip/phone/b/y;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/viber/voip/phone/b/z;->a:Lcom/viber/voip/phone/b/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/viber/voip/phone/b/z;->a:Lcom/viber/voip/phone/b/y;

    invoke-virtual {v0}, Lcom/viber/voip/phone/b/y;->c()Lcom/viber/voip/phone/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->b()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_0

    .line 184
    iget-object v1, p0, Lcom/viber/voip/phone/b/z;->a:Lcom/viber/voip/phone/b/y;

    invoke-virtual {v1}, Lcom/viber/voip/phone/b/y;->e()Lcom/viber/voip/sound/ISoundService;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/phone/b/z;->a:Lcom/viber/voip/phone/b/y;

    invoke-virtual {v2}, Lcom/viber/voip/phone/b/y;->e()Lcom/viber/voip/sound/ISoundService;

    move-result-object v2

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->d()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/viber/voip/sound/ISoundService;->getRingtone(Landroid/net/Uri;)Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/viber/voip/sound/ISoundService;->playRingtone(Lcom/viber/voip/sound/IRingtoneService$Ringtone;)V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/b/z;->a:Lcom/viber/voip/phone/b/y;

    invoke-static {v0}, Lcom/viber/voip/phone/b/y;->a(Lcom/viber/voip/phone/b/y;)Lcom/viber/voip/ui/call/WavesView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/call/WavesView;->setVisibility(I)V

    .line 188
    return-void
.end method

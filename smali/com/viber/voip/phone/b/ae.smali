.class Lcom/viber/voip/phone/b/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/phone/b/ac;


# direct methods
.method constructor <init>(Lcom/viber/voip/phone/b/ac;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/viber/voip/phone/b/ae;->a:Lcom/viber/voip/phone/b/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/viber/voip/phone/b/ae;->a:Lcom/viber/voip/phone/b/ac;

    iget-object v0, v0, Lcom/viber/voip/phone/b/ac;->e:Lcom/viber/voip/phone/call/k;

    .line 117
    if-eqz v0, :cond_0

    .line 118
    iget-object v1, p0, Lcom/viber/voip/phone/b/ae;->a:Lcom/viber/voip/phone/b/ac;

    invoke-static {v1}, Lcom/viber/voip/phone/b/ac;->d(Lcom/viber/voip/phone/b/ac;)Lcom/viber/voip/sound/ISoundService;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/phone/b/ae;->a:Lcom/viber/voip/phone/b/ac;

    invoke-static {v2}, Lcom/viber/voip/phone/b/ac;->d(Lcom/viber/voip/phone/b/ac;)Lcom/viber/voip/sound/ISoundService;

    move-result-object v2

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->d()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/viber/voip/sound/ISoundService;->getRingtone(Landroid/net/Uri;)Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/viber/voip/sound/ISoundService;->playRingtone(Lcom/viber/voip/sound/IRingtoneService$Ringtone;)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/b/ae;->a:Lcom/viber/voip/phone/b/ac;

    invoke-static {v0}, Lcom/viber/voip/phone/b/ac;->e(Lcom/viber/voip/phone/b/ac;)Lcom/viber/voip/ui/call/WavesView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/call/WavesView;->setVisibility(I)V

    .line 122
    return-void
.end method

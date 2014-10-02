.class Lcom/viber/voip/registration/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/registration/ActivateSecondaryActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/ActivateSecondaryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/viber/voip/registration/a;->a:Lcom/viber/voip/registration/ActivateSecondaryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 105
    iget-object v0, p0, Lcom/viber/voip/registration/a;->a:Lcom/viber/voip/registration/ActivateSecondaryActivity;

    invoke-static {v0}, Lcom/viber/voip/registration/ActivateSecondaryActivity;->a(Lcom/viber/voip/registration/ActivateSecondaryActivity;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/viber/voip/registration/a;->a:Lcom/viber/voip/registration/ActivateSecondaryActivity;

    invoke-static {v0}, Lcom/viber/voip/registration/ActivateSecondaryActivity;->c(Lcom/viber/voip/registration/ActivateSecondaryActivity;)Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/registration/a;->a:Lcom/viber/voip/registration/ActivateSecondaryActivity;

    invoke-static {v1}, Lcom/viber/voip/registration/ActivateSecondaryActivity;->b(Lcom/viber/voip/registration/ActivateSecondaryActivity;)Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/voip/sound/ISoundService;->playRingtone(Lcom/viber/voip/sound/IRingtoneService$Ringtone;)V

    .line 108
    :cond_0
    return-void
.end method

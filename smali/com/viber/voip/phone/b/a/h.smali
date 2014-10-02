.class Lcom/viber/voip/phone/b/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/phone/b/a/e;


# direct methods
.method private constructor <init>(Lcom/viber/voip/phone/b/a/e;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/viber/voip/phone/b/a/h;->a:Lcom/viber/voip/phone/b/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/phone/b/a/e;Lcom/viber/voip/phone/b/a/f;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/viber/voip/phone/b/a/h;-><init>(Lcom/viber/voip/phone/b/a/e;)V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/h;->a:Lcom/viber/voip/phone/b/a/e;

    invoke-static {v0}, Lcom/viber/voip/phone/b/a/e;->a(Lcom/viber/voip/phone/b/a/e;)Lcom/viber/voip/ui/ViberEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ui/ViberEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 115
    const-string/jumbo v1, "+"

    invoke-interface {v0, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 117
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/h;->a:Lcom/viber/voip/phone/b/a/e;

    invoke-static {v0}, Lcom/viber/voip/phone/b/a/e;->b(Lcom/viber/voip/phone/b/a/e;)Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/viber/voip/sound/ISoundService;->sendDTMFTone(I)V

    .line 118
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->w()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->x()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/h;->a:Lcom/viber/voip/phone/b/a/e;

    invoke-static {v0}, Lcom/viber/voip/phone/b/a/e;->b(Lcom/viber/voip/phone/b/a/e;)Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->getVibratorService()Lcom/viber/voip/sound/IVibratorService;

    move-result-object v0

    const-wide/16 v1, 0x23

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/sound/IVibratorService;->vibrate(J)V

    .line 122
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

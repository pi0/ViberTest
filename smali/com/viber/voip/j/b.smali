.class final Lcom/viber/voip/j/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/dw;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/ViberApplication;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "pref_vibes_enabled_2"

    invoke-interface {v0, v1, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAppReady vibesWereEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/j/a;->a(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/viber/voip/j/a;->g()Lcom/viber/voip/j/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/j/a;->a(I)V

    .line 39
    invoke-virtual {p1, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    .line 40
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/viber/jni/PhoneControllerDelegate;

    invoke-static {}, Lcom/viber/voip/j/a;->g()Lcom/viber/voip/j/a;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 41
    return-void
.end method

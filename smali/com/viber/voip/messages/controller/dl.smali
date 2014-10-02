.class Lcom/viber/voip/messages/controller/dl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/PhoneControllerReadyListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/controller/dk;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/dk;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/viber/voip/messages/controller/dl;->a:Lcom/viber/voip/messages/controller/dk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ready(Lcom/viber/jni/controller/PhoneController;)V
    .locals 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/viber/voip/messages/controller/dl;->a:Lcom/viber/voip/messages/controller/dk;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getSoundService()Lcom/viber/voip/sound/ISoundService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/controller/dk;->a(Lcom/viber/voip/messages/controller/dk;Lcom/viber/voip/sound/ISoundService;)Lcom/viber/voip/sound/ISoundService;

    .line 47
    iget-object v0, p0, Lcom/viber/voip/messages/controller/dl;->a:Lcom/viber/voip/messages/controller/dk;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/dk;->a(Lcom/viber/voip/messages/controller/dk;)Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/messages/controller/dk;->b()[I

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/voip/sound/ISoundService;->loadSamples([I)V

    .line 48
    return-void
.end method

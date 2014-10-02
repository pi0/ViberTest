.class Lcom/viber/voip/messages/ui/cg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/PhoneControllerReadyListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/MessageComposerView;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/MessageComposerView;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/viber/voip/messages/ui/cg;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ready(Lcom/viber/jni/controller/PhoneController;)V
    .locals 2
    .parameter

    .prologue
    .line 280
    iget-object v0, p0, Lcom/viber/voip/messages/ui/cg;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/cg;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/MessageComposerView;->c(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getSoundService()Lcom/viber/voip/sound/ISoundService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/MessageComposerView;->a(Lcom/viber/voip/messages/ui/MessageComposerView;Lcom/viber/voip/sound/ISoundService;)Lcom/viber/voip/sound/ISoundService;

    .line 281
    iget-object v0, p0, Lcom/viber/voip/messages/ui/cg;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->e(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/cg;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/MessageComposerView;->d(Lcom/viber/voip/messages/ui/MessageComposerView;)[I

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/voip/sound/ISoundService;->loadSamples([I)V

    .line 282
    return-void
.end method

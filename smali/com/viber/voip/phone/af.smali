.class Lcom/viber/voip/phone/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/phone/VideoCallActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/phone/VideoCallActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 777
    iput-object p1, p0, Lcom/viber/voip/phone/af;->a:Lcom/viber/voip/phone/VideoCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 780
    iget-object v0, p0, Lcom/viber/voip/phone/af;->a:Lcom/viber/voip/phone/VideoCallActivity;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-static {v1}, Lorg/webrtc/videoengine/ViERenderer;->CreateLocalRenderView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/phone/VideoCallActivity;->a(Lcom/viber/voip/phone/VideoCallActivity;Landroid/view/View;)V

    .line 781
    return-void
.end method

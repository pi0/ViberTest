.class Lcom/viber/voip/phone/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/phone/ai;


# direct methods
.method constructor <init>(Lcom/viber/voip/phone/ai;)V
    .locals 0
    .parameter

    .prologue
    .line 495
    iput-object p1, p0, Lcom/viber/voip/phone/ak;->a:Lcom/viber/voip/phone/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/viber/voip/phone/ak;->a:Lcom/viber/voip/phone/ai;

    iget-object v0, v0, Lcom/viber/voip/phone/ai;->a:Lcom/viber/voip/phone/VideoCallActivity;

    invoke-static {v0}, Lcom/viber/voip/phone/VideoCallActivity;->b(Lcom/viber/voip/phone/VideoCallActivity;)Lcom/viber/voip/phone/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/al;->c()V

    .line 499
    return-void
.end method

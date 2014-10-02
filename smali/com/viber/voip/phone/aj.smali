.class Lcom/viber/voip/phone/aj;
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
    .line 485
    iput-object p1, p0, Lcom/viber/voip/phone/aj;->a:Lcom/viber/voip/phone/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/viber/voip/phone/aj;->a:Lcom/viber/voip/phone/ai;

    iget-object v0, v0, Lcom/viber/voip/phone/ai;->a:Lcom/viber/voip/phone/VideoCallActivity;

    invoke-static {v0}, Lcom/viber/voip/phone/VideoCallActivity;->b(Lcom/viber/voip/phone/VideoCallActivity;)Lcom/viber/voip/phone/al;

    move-result-object v0

    const v1, 0x7f0c0412

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/al;->b(I)V

    .line 489
    return-void
.end method

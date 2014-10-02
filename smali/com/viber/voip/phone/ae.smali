.class Lcom/viber/voip/phone/ae;
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
    .line 636
    iput-object p1, p0, Lcom/viber/voip/phone/ae;->a:Lcom/viber/voip/phone/VideoCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/viber/voip/phone/ae;->a:Lcom/viber/voip/phone/VideoCallActivity;

    invoke-static {v0}, Lcom/viber/voip/phone/VideoCallActivity;->e(Lcom/viber/voip/phone/VideoCallActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 648
    return-void
.end method

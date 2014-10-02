.class Lcom/viber/voip/sound/tonegen/MediaToneGenerator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/sound/tonegen/MediaToneGenerator;


# direct methods
.method constructor <init>(Lcom/viber/voip/sound/tonegen/MediaToneGenerator;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator$1;->this$0:Lcom/viber/voip/sound/tonegen/MediaToneGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator$1;->this$0:Lcom/viber/voip/sound/tonegen/MediaToneGenerator;

    invoke-static {}, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->access$000()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 29
    return-void
.end method

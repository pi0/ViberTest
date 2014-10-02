.class Lcom/viber/voip/sound/RingtoneService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/sound/RingtoneService;

.field final synthetic val$_restartSpirit:Z

.field final synthetic val$r:Lcom/viber/voip/sound/IRingtoneService$Ringtone;


# direct methods
.method constructor <init>(Lcom/viber/voip/sound/RingtoneService;Lcom/viber/voip/sound/IRingtoneService$Ringtone;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/viber/voip/sound/RingtoneService$2;->this$0:Lcom/viber/voip/sound/RingtoneService;

    iput-object p2, p0, Lcom/viber/voip/sound/RingtoneService$2;->val$r:Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    iput-boolean p3, p0, Lcom/viber/voip/sound/RingtoneService$2;->val$_restartSpirit:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/viber/voip/sound/RingtoneService$2;->this$0:Lcom/viber/voip/sound/RingtoneService;

    iget-object v1, p0, Lcom/viber/voip/sound/RingtoneService$2;->val$r:Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    iget-boolean v2, p0, Lcom/viber/voip/sound/RingtoneService$2;->val$_restartSpirit:Z

    #calls: Lcom/viber/voip/sound/RingtoneService;->processSampleEnd(Lcom/viber/voip/sound/IRingtoneService$Ringtone;Z)V
    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/RingtoneService;->access$000(Lcom/viber/voip/sound/RingtoneService;Lcom/viber/voip/sound/IRingtoneService$Ringtone;Z)V

    .line 132
    return-void
.end method

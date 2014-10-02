.class Lcom/viber/voip/messages/conversation/publicgroup/ax;
.super Lcom/viber/voip/messages/ui/du;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/publicgroup/ParticipantControlsContainer;

.field final synthetic b:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;

.field private c:I


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;Lcom/viber/voip/messages/conversation/publicgroup/ParticipantControlsContainer;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/ax;->b:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;

    iput-object p2, p0, Lcom/viber/voip/messages/conversation/publicgroup/ax;->a:Lcom/viber/voip/messages/conversation/publicgroup/ParticipantControlsContainer;

    invoke-direct {p0}, Lcom/viber/voip/messages/ui/du;-><init>()V

    .line 235
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/ax;->c:I

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/publicgroup/ax;)I
    .locals 1
    .parameter

    .prologue
    .line 234
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/ax;->c:I

    return v0
.end method


# virtual methods
.method public a(Landroid/view/View;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/ax;->c:I

    if-eq v0, v1, :cond_0

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/ax;->c:I

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Changed witdh: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/ax;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->a(Ljava/lang/String;)V

    .line 241
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/conversation/publicgroup/ay;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/publicgroup/ay;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/ax;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 248
    :cond_0
    return-void
.end method

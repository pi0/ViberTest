.class Lcom/viber/voip/launcher/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/viber/voip/launcher/c;


# direct methods
.method constructor <init>(Lcom/viber/voip/launcher/c;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/viber/voip/launcher/d;->c:Lcom/viber/voip/launcher/c;

    iput p2, p0, Lcom/viber/voip/launcher/d;->a:I

    iput p3, p0, Lcom/viber/voip/launcher/d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 95
    iget-object v0, p0, Lcom/viber/voip/launcher/d;->c:Lcom/viber/voip/launcher/c;

    iget-object v0, v0, Lcom/viber/voip/launcher/c;->c:Lcom/viber/voip/launcher/RecentCallsWidget;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive(ACTION_UPDATE_WIDGETS): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/viber/voip/launcher/d;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", messagesCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/viber/voip/launcher/d;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/launcher/RecentCallsWidget;->a(Lcom/viber/voip/launcher/RecentCallsWidget;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/viber/voip/launcher/d;->c:Lcom/viber/voip/launcher/c;

    iget-object v0, v0, Lcom/viber/voip/launcher/c;->c:Lcom/viber/voip/launcher/RecentCallsWidget;

    iget-object v1, p0, Lcom/viber/voip/launcher/d;->c:Lcom/viber/voip/launcher/c;

    iget-object v1, v1, Lcom/viber/voip/launcher/c;->b:Landroid/content/Context;

    iget v2, p0, Lcom/viber/voip/launcher/d;->a:I

    iget v3, p0, Lcom/viber/voip/launcher/d;->b:I

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/launcher/RecentCallsWidget;->a(Lcom/viber/voip/launcher/RecentCallsWidget;Landroid/content/Context;II)V

    .line 98
    return-void
.end method

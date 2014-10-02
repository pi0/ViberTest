.class Lcom/viber/voip/launcher/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/viber/voip/launcher/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/launcher/a;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/viber/voip/launcher/b;->c:Lcom/viber/voip/launcher/a;

    iput p2, p0, Lcom/viber/voip/launcher/b;->a:I

    iput p3, p0, Lcom/viber/voip/launcher/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/viber/voip/launcher/b;->c:Lcom/viber/voip/launcher/a;

    iget-object v0, v0, Lcom/viber/voip/launcher/a;->c:Lcom/viber/voip/launcher/ContactWidget;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive(ACTION_UPDATE_WIDGETS): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/viber/voip/launcher/b;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", messagesCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/viber/voip/launcher/b;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/launcher/ContactWidget;->a(Lcom/viber/voip/launcher/ContactWidget;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/viber/voip/launcher/b;->c:Lcom/viber/voip/launcher/a;

    iget-object v0, v0, Lcom/viber/voip/launcher/a;->c:Lcom/viber/voip/launcher/ContactWidget;

    iget-object v1, p0, Lcom/viber/voip/launcher/b;->c:Lcom/viber/voip/launcher/a;

    iget-object v1, v1, Lcom/viber/voip/launcher/a;->b:Landroid/content/Context;

    iget v2, p0, Lcom/viber/voip/launcher/b;->a:I

    iget v3, p0, Lcom/viber/voip/launcher/b;->b:I

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/launcher/ContactWidget;->a(Lcom/viber/voip/launcher/ContactWidget;Landroid/content/Context;II)V

    .line 99
    return-void
.end method

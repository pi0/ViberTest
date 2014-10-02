.class Lcom/viber/voip/messages/ui/popup/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/viber/voip/messages/ui/popup/a;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mInteractionTimeout: mShouldClosePopup = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/popup/a;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->a(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->a(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->a(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/viber/voip/h/b;->d()Lcom/viber/voip/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/h/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->finish()V

    .line 137
    :cond_0
    return-void
.end method

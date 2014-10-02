.class Lcom/viber/voip/messages/ui/popup/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/lastonline/LastOnlineDelegate;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 839
    iput-object p1, p0, Lcom/viber/voip/messages/ui/popup/h;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLastOnline([Lcom/viber/jni/OnlineContactInfo;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 842
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/h;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->o(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/h;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLastSeen onlineContactInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " seq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->a(Ljava/lang/String;)V

    .line 844
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/h;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/ui/popup/i;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/popup/i;-><init>(Lcom/viber/voip/messages/ui/popup/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 852
    :cond_0
    return-void
.end method

.class Lcom/viber/voip/messages/ui/chathead/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/chathead/ah;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/ah;)V
    .locals 0
    .parameter

    .prologue
    .line 2713
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/ai;->a:Lcom/viber/voip/messages/ui/chathead/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2717
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/ai;->a:Lcom/viber/voip/messages/ui/chathead/ah;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/chathead/ah;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->l(Lcom/viber/voip/messages/ui/chathead/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2718
    const-string/jumbo v0, "onPhoneStateChanged: ID_Idle"

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->a(Ljava/lang/String;)V

    .line 2719
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/ai;->a:Lcom/viber/voip/messages/ui/chathead/ah;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/chathead/ah;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->i(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/a;->setVisibility(I)V

    .line 2720
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/ai;->a:Lcom/viber/voip/messages/ui/chathead/ah;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/chathead/ah;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/chathead/d;->j(Lcom/viber/voip/messages/ui/chathead/d;Z)Z

    .line 2722
    :cond_0
    return-void
.end method

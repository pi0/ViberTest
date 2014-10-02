.class Lcom/viber/voip/messages/ui/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/ConversationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/viber/voip/messages/ui/f;->a:Lcom/viber/voip/messages/ui/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/viber/voip/messages/ui/f;->a:Lcom/viber/voip/messages/ui/ConversationActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/ConversationActivity;->a(Lcom/viber/voip/messages/ui/ConversationActivity;)Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->c()V

    .line 485
    iget-object v0, p0, Lcom/viber/voip/messages/ui/f;->a:Lcom/viber/voip/messages/ui/ConversationActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/ConversationActivity;->b(Lcom/viber/voip/messages/ui/ConversationActivity;Z)Z

    .line 486
    return-void
.end method

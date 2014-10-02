.class Lcom/viber/voip/messages/ui/d;
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
    .line 252
    iput-object p1, p0, Lcom/viber/voip/messages/ui/d;->a:Lcom/viber/voip/messages/ui/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/viber/voip/messages/ui/d;->a:Lcom/viber/voip/messages/ui/ConversationActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/ConversationActivity;->a(Lcom/viber/voip/messages/ui/ConversationActivity;)Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->b()V

    .line 257
    return-void
.end method

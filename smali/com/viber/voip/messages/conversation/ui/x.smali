.class Lcom/viber/voip/messages/conversation/ui/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/CharSequence;

.field final synthetic b:Z

.field final synthetic c:Lcom/viber/voip/messages/conversation/ui/m;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/m;Ljava/lang/CharSequence;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/x;->c:Lcom/viber/voip/messages/conversation/ui/m;

    iput-object p2, p0, Lcom/viber/voip/messages/conversation/ui/x;->a:Ljava/lang/CharSequence;

    iput-boolean p3, p0, Lcom/viber/voip/messages/conversation/ui/x;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 343
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/x;->c:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/m;->a(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/x;->a:Ljava/lang/CharSequence;

    iget-boolean v2, p0, Lcom/viber/voip/messages/conversation/ui/x;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Ljava/lang/CharSequence;Z)V

    .line 344
    return-void
.end method

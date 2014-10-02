.class Lcom/viber/voip/messages/conversation/ui/cb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Lcom/viber/jni/OnlineContactInfo;

.field final synthetic b:Lcom/viber/voip/messages/conversation/ui/ca;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/ca;[Lcom/viber/jni/OnlineContactInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 766
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/cb;->b:Lcom/viber/voip/messages/conversation/ui/ca;

    iput-object p2, p0, Lcom/viber/voip/messages/conversation/ui/cb;->a:[Lcom/viber/jni/OnlineContactInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 770
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cb;->b:Lcom/viber/voip/messages/conversation/ui/ca;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ca;->a:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->d(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;)Lcom/viber/voip/messages/adapters/l;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/cb;->a:[Lcom/viber/jni/OnlineContactInfo;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/adapters/l;->a([Lcom/viber/jni/OnlineContactInfo;)V

    .line 771
    return-void
.end method

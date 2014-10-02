.class Lcom/viber/voip/messages/conversation/ui/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/jni/OnlineContactInfo;

.field final synthetic b:Lcom/viber/voip/messages/conversation/ui/v;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/v;Lcom/viber/jni/OnlineContactInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/w;->b:Lcom/viber/voip/messages/conversation/ui/v;

    iput-object p2, p0, Lcom/viber/voip/messages/conversation/ui/w;->a:Lcom/viber/jni/OnlineContactInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/w;->b:Lcom/viber/voip/messages/conversation/ui/v;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/v;->a:Lcom/viber/voip/messages/conversation/ui/m;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/w;->a:Lcom/viber/jni/OnlineContactInfo;

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/ui/m;->a(Lcom/viber/voip/messages/conversation/ui/m;Lcom/viber/jni/OnlineContactInfo;)V

    .line 274
    return-void
.end method

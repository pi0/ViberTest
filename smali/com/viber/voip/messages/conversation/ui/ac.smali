.class Lcom/viber/voip/messages/conversation/ui/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ui/m;


# direct methods
.method private constructor <init>(Lcom/viber/voip/messages/conversation/ui/m;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/ac;->a:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/messages/conversation/ui/m;Lcom/viber/voip/messages/conversation/ui/n;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/ui/ac;-><init>(Lcom/viber/voip/messages/conversation/ui/m;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 192
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ac;->a:Lcom/viber/voip/messages/conversation/ui/m;

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ac;->a:Lcom/viber/voip/messages/conversation/ui/m;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/viber/voip/messages/conversation/ui/m;->a(Lcom/viber/voip/messages/conversation/ui/m;Lcom/viber/voip/messages/conversation/ui/ac;)Lcom/viber/voip/messages/conversation/ui/ac;

    .line 195
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ac;->a:Lcom/viber/voip/messages/conversation/ui/m;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/viber/voip/messages/conversation/ui/m;->a(Lcom/viber/voip/messages/conversation/ui/m;Ljava/lang/CharSequence;Z)V

    .line 196
    monitor-exit v1

    .line 197
    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

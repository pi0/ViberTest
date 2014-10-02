.class Lcom/viber/voip/messages/controller/a/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lcom/viber/voip/messages/controller/a/ac;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/ac;Ljava/lang/String;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/av;->d:Lcom/viber/voip/messages/controller/a/ac;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/a/av;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/viber/voip/messages/controller/a/av;->b:Z

    iput-boolean p4, p0, Lcom/viber/voip/messages/controller/a/av;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 405
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/av;->d:Lcom/viber/voip/messages/controller/a/ac;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/a/ac;->a(Lcom/viber/voip/messages/controller/a/ac;)[Lcom/viber/voip/messages/controller/a/a;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 406
    iget-object v4, p0, Lcom/viber/voip/messages/controller/a/av;->a:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/viber/voip/messages/controller/a/av;->b:Z

    iget-boolean v6, p0, Lcom/viber/voip/messages/controller/a/av;->c:Z

    invoke-virtual {v3, v4, v5, v6}, Lcom/viber/jni/PhoneControllerDelegateAdapter;->onChangeConversationSettingsReply(Ljava/lang/String;ZZ)V

    .line 405
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 408
    :cond_0
    return-void
.end method

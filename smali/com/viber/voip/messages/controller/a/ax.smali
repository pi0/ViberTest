.class Lcom/viber/voip/messages/controller/a/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/viber/voip/messages/controller/a/ac;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/ac;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/ax;->d:Lcom/viber/voip/messages/controller/a/ac;

    iput-wide p2, p0, Lcom/viber/voip/messages/controller/a/ax;->a:J

    iput-object p4, p0, Lcom/viber/voip/messages/controller/a/ax;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/viber/voip/messages/controller/a/ax;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 431
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/ax;->d:Lcom/viber/voip/messages/controller/a/ac;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/a/ac;->a(Lcom/viber/voip/messages/controller/a/ac;)[Lcom/viber/voip/messages/controller/a/a;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 432
    iget-wide v4, p0, Lcom/viber/voip/messages/controller/a/ax;->a:J

    iget-object v6, p0, Lcom/viber/voip/messages/controller/a/ax;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/viber/voip/messages/controller/a/ax;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/viber/jni/PhoneControllerDelegateAdapter;->onUserInfoChange(JLjava/lang/String;Ljava/lang/String;)V

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 434
    :cond_0
    return-void
.end method

.class Lcom/viber/voip/messages/controller/a/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:I

.field final synthetic d:Lcom/viber/voip/messages/controller/a/ac;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/ac;JJI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/at;->d:Lcom/viber/voip/messages/controller/a/ac;

    iput-wide p2, p0, Lcom/viber/voip/messages/controller/a/at;->a:J

    iput-wide p4, p0, Lcom/viber/voip/messages/controller/a/at;->b:J

    iput p6, p0, Lcom/viber/voip/messages/controller/a/at;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 378
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/at;->d:Lcom/viber/voip/messages/controller/a/ac;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/a/ac;->a(Lcom/viber/voip/messages/controller/a/ac;)[Lcom/viber/voip/messages/controller/a/a;

    move-result-object v7

    array-length v8, v7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v0, v7, v6

    .line 379
    iget-wide v1, p0, Lcom/viber/voip/messages/controller/a/at;->a:J

    iget-wide v3, p0, Lcom/viber/voip/messages/controller/a/at;->b:J

    iget v5, p0, Lcom/viber/voip/messages/controller/a/at;->c:I

    invoke-virtual/range {v0 .. v5}, Lcom/viber/jni/PhoneControllerDelegateAdapter;->onSyncGroupReply(JJI)V

    .line 378
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 381
    :cond_0
    return-void
.end method

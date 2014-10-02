.class Lcom/viber/voip/messages/controller/a/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/viber/voip/messages/controller/a/ac;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/ac;IJII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/ae;->e:Lcom/viber/voip/messages/controller/a/ac;

    iput p2, p0, Lcom/viber/voip/messages/controller/a/ae;->a:I

    iput-wide p3, p0, Lcom/viber/voip/messages/controller/a/ae;->b:J

    iput p5, p0, Lcom/viber/voip/messages/controller/a/ae;->c:I

    iput p6, p0, Lcom/viber/voip/messages/controller/a/ae;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 193
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/ae;->e:Lcom/viber/voip/messages/controller/a/ac;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/a/ac;->a(Lcom/viber/voip/messages/controller/a/ac;)[Lcom/viber/voip/messages/controller/a/a;

    move-result-object v7

    array-length v8, v7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v0, v7, v6

    .line 194
    iget v1, p0, Lcom/viber/voip/messages/controller/a/ae;->a:I

    iget-wide v2, p0, Lcom/viber/voip/messages/controller/a/ae;->b:J

    iget v4, p0, Lcom/viber/voip/messages/controller/a/ae;->c:I

    iget v5, p0, Lcom/viber/voip/messages/controller/a/ae;->d:I

    invoke-virtual/range {v0 .. v5}, Lcom/viber/jni/PhoneControllerDelegateAdapter;->onSendMessageReply(IJII)V

    .line 193
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 196
    :cond_0
    return-void
.end method

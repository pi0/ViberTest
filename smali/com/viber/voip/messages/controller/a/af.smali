.class Lcom/viber/voip/messages/controller/a/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:Lcom/viber/voip/messages/controller/a/ac;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/ac;IIJLjava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/af;->e:Lcom/viber/voip/messages/controller/a/ac;

    iput p2, p0, Lcom/viber/voip/messages/controller/a/af;->a:I

    iput p3, p0, Lcom/viber/voip/messages/controller/a/af;->b:I

    iput-wide p4, p0, Lcom/viber/voip/messages/controller/a/af;->c:J

    iput-object p6, p0, Lcom/viber/voip/messages/controller/a/af;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 206
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/af;->e:Lcom/viber/voip/messages/controller/a/ac;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/a/ac;->a(Lcom/viber/voip/messages/controller/a/ac;)[Lcom/viber/voip/messages/controller/a/a;

    move-result-object v7

    array-length v8, v7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v0, v7, v6

    .line 207
    iget v1, p0, Lcom/viber/voip/messages/controller/a/af;->a:I

    iget v2, p0, Lcom/viber/voip/messages/controller/a/af;->b:I

    iget-wide v3, p0, Lcom/viber/voip/messages/controller/a/af;->c:J

    iget-object v5, p0, Lcom/viber/voip/messages/controller/a/af;->d:Ljava/util/Map;

    invoke-virtual/range {v0 .. v5}, Lcom/viber/jni/PhoneControllerDelegateAdapter;->onCreateGroupReply(IIJLjava/util/Map;)V

    .line 206
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 209
    :cond_0
    return-void
.end method

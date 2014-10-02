.class Lcom/viber/voip/messages/controller/a/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:[J

.field final synthetic c:I

.field final synthetic d:Lcom/viber/voip/messages/controller/a/ac;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/ac;I[JI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/as;->d:Lcom/viber/voip/messages/controller/a/ac;

    iput p2, p0, Lcom/viber/voip/messages/controller/a/as;->a:I

    iput-object p3, p0, Lcom/viber/voip/messages/controller/a/as;->b:[J

    iput p4, p0, Lcom/viber/voip/messages/controller/a/as;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 365
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/as;->d:Lcom/viber/voip/messages/controller/a/ac;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/a/ac;->a(Lcom/viber/voip/messages/controller/a/ac;)[Lcom/viber/voip/messages/controller/a/a;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 366
    iget v4, p0, Lcom/viber/voip/messages/controller/a/as;->a:I

    iget-object v5, p0, Lcom/viber/voip/messages/controller/a/as;->b:[J

    iget v6, p0, Lcom/viber/voip/messages/controller/a/as;->c:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/viber/jni/PhoneControllerDelegateAdapter;->onSyncMessagesReply(I[JI)V

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    :cond_0
    return-void
.end method

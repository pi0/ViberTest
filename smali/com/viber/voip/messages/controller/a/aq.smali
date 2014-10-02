.class Lcom/viber/voip/messages/controller/a/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[J

.field final synthetic b:[J

.field final synthetic c:Lcom/viber/voip/messages/controller/a/ac;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/ac;[J[J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/aq;->c:Lcom/viber/voip/messages/controller/a/ac;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/a/aq;->a:[J

    iput-object p3, p0, Lcom/viber/voip/messages/controller/a/aq;->b:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 337
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/aq;->c:Lcom/viber/voip/messages/controller/a/ac;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/a/ac;->a(Lcom/viber/voip/messages/controller/a/ac;)[Lcom/viber/voip/messages/controller/a/a;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 338
    iget-object v4, p0, Lcom/viber/voip/messages/controller/a/aq;->a:[J

    iget-object v5, p0, Lcom/viber/voip/messages/controller/a/aq;->b:[J

    invoke-virtual {v3, v4, v5}, Lcom/viber/jni/PhoneControllerDelegateAdapter;->onSyncMessages([J[J)Z

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    :cond_0
    return-void
.end method

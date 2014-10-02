.class Lcom/viber/voip/messages/controller/a/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/viber/voip/messages/controller/a/ac;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/ac;JJII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/ar;->e:Lcom/viber/voip/messages/controller/a/ac;

    iput-wide p2, p0, Lcom/viber/voip/messages/controller/a/ar;->a:J

    iput-wide p4, p0, Lcom/viber/voip/messages/controller/a/ar;->b:J

    iput p6, p0, Lcom/viber/voip/messages/controller/a/ar;->c:I

    iput p7, p0, Lcom/viber/voip/messages/controller/a/ar;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 351
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/ar;->e:Lcom/viber/voip/messages/controller/a/ac;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/a/ac;->a(Lcom/viber/voip/messages/controller/a/ac;)[Lcom/viber/voip/messages/controller/a/a;

    move-result-object v8

    array-length v9, v8

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v0, v8, v7

    .line 352
    iget-wide v1, p0, Lcom/viber/voip/messages/controller/a/ar;->a:J

    iget-wide v3, p0, Lcom/viber/voip/messages/controller/a/ar;->b:J

    iget v5, p0, Lcom/viber/voip/messages/controller/a/ar;->c:I

    iget v6, p0, Lcom/viber/voip/messages/controller/a/ar;->d:I

    invoke-virtual/range {v0 .. v6}, Lcom/viber/jni/PhoneControllerDelegateAdapter;->onMessageDelivered(JJII)Z

    .line 351
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 354
    :cond_0
    return-void
.end method

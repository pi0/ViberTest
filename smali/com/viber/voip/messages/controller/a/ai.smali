.class Lcom/viber/voip/messages/controller/a/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:[Lcom/viber/jni/PublicGroupMessage;

.field final synthetic d:[Lcom/viber/jni/PublicGroupChangeEvent;

.field final synthetic e:I

.field final synthetic f:Lcom/viber/voip/messages/controller/a/ac;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/ac;IJ[Lcom/viber/jni/PublicGroupMessage;[Lcom/viber/jni/PublicGroupChangeEvent;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/ai;->f:Lcom/viber/voip/messages/controller/a/ac;

    iput p2, p0, Lcom/viber/voip/messages/controller/a/ai;->a:I

    iput-wide p3, p0, Lcom/viber/voip/messages/controller/a/ai;->b:J

    iput-object p5, p0, Lcom/viber/voip/messages/controller/a/ai;->c:[Lcom/viber/jni/PublicGroupMessage;

    iput-object p6, p0, Lcom/viber/voip/messages/controller/a/ai;->d:[Lcom/viber/jni/PublicGroupChangeEvent;

    iput p7, p0, Lcom/viber/voip/messages/controller/a/ai;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 245
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/ai;->f:Lcom/viber/voip/messages/controller/a/ac;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/a/ac;->a(Lcom/viber/voip/messages/controller/a/ac;)[Lcom/viber/voip/messages/controller/a/a;

    move-result-object v8

    array-length v9, v8

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v0, v8, v7

    .line 246
    iget v1, p0, Lcom/viber/voip/messages/controller/a/ai;->a:I

    iget-wide v2, p0, Lcom/viber/voip/messages/controller/a/ai;->b:J

    iget-object v4, p0, Lcom/viber/voip/messages/controller/a/ai;->c:[Lcom/viber/jni/PublicGroupMessage;

    iget-object v5, p0, Lcom/viber/voip/messages/controller/a/ai;->d:[Lcom/viber/jni/PublicGroupChangeEvent;

    iget v6, p0, Lcom/viber/voip/messages/controller/a/ai;->e:I

    invoke-virtual/range {v0 .. v6}, Lcom/viber/jni/PhoneControllerDelegateAdapter;->onGetPublicGroupMessages(IJ[Lcom/viber/jni/PublicGroupMessage;[Lcom/viber/jni/PublicGroupChangeEvent;I)V

    .line 245
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 248
    :cond_0
    return-void
.end method

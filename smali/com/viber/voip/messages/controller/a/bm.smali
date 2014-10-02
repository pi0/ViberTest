.class Lcom/viber/voip/messages/controller/a/bm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:[B

.field final synthetic d:J

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:Lcom/viber/jni/LocationInfo;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Lcom/viber/voip/messages/controller/a/ac;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/ac;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/bm;->j:Lcom/viber/voip/messages/controller/a/ac;

    iput-wide p2, p0, Lcom/viber/voip/messages/controller/a/bm;->a:J

    iput-object p4, p0, Lcom/viber/voip/messages/controller/a/bm;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/viber/voip/messages/controller/a/bm;->c:[B

    iput-wide p6, p0, Lcom/viber/voip/messages/controller/a/bm;->d:J

    iput p8, p0, Lcom/viber/voip/messages/controller/a/bm;->e:I

    iput p9, p0, Lcom/viber/voip/messages/controller/a/bm;->f:I

    iput-object p10, p0, Lcom/viber/voip/messages/controller/a/bm;->g:Lcom/viber/jni/LocationInfo;

    iput-object p11, p0, Lcom/viber/voip/messages/controller/a/bm;->h:Ljava/lang/String;

    iput-object p12, p0, Lcom/viber/voip/messages/controller/a/bm;->i:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 117
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/bm;->j:Lcom/viber/voip/messages/controller/a/ac;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/a/ac;->a(Lcom/viber/voip/messages/controller/a/ac;)[Lcom/viber/voip/messages/controller/a/a;

    move-result-object v13

    array-length v14, v13

    const/4 v0, 0x0

    move v12, v0

    :goto_0
    if-ge v12, v14, :cond_0

    aget-object v0, v13, v12

    .line 118
    iget-wide v1, p0, Lcom/viber/voip/messages/controller/a/bm;->a:J

    iget-object v3, p0, Lcom/viber/voip/messages/controller/a/bm;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/viber/voip/messages/controller/a/bm;->c:[B

    iget-wide v5, p0, Lcom/viber/voip/messages/controller/a/bm;->d:J

    iget v7, p0, Lcom/viber/voip/messages/controller/a/bm;->e:I

    iget v8, p0, Lcom/viber/voip/messages/controller/a/bm;->f:I

    iget-object v9, p0, Lcom/viber/voip/messages/controller/a/bm;->g:Lcom/viber/jni/LocationInfo;

    iget-object v10, p0, Lcom/viber/voip/messages/controller/a/bm;->h:Ljava/lang/String;

    iget-object v11, p0, Lcom/viber/voip/messages/controller/a/bm;->i:Ljava/lang/String;

    invoke-virtual/range {v0 .. v11}, Lcom/viber/jni/PhoneControllerDelegateAdapter;->onAnimatedMessageReceived(JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 117
    add-int/lit8 v0, v12, 0x1

    move v12, v0

    goto :goto_0

    .line 120
    :cond_0
    return-void
.end method

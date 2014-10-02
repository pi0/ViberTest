.class Lcom/viber/voip/messages/controller/a/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:J

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:Lcom/viber/jni/LocationInfo;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Lcom/viber/voip/messages/controller/a/ac;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/ac;JLjava/lang/String;Ljava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;)V
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

    .prologue
    .line 42
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/ad;->i:Lcom/viber/voip/messages/controller/a/ac;

    iput-wide p2, p0, Lcom/viber/voip/messages/controller/a/ad;->a:J

    iput-object p4, p0, Lcom/viber/voip/messages/controller/a/ad;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/viber/voip/messages/controller/a/ad;->c:Ljava/lang/String;

    iput-wide p6, p0, Lcom/viber/voip/messages/controller/a/ad;->d:J

    iput p8, p0, Lcom/viber/voip/messages/controller/a/ad;->e:I

    iput p9, p0, Lcom/viber/voip/messages/controller/a/ad;->f:I

    iput-object p10, p0, Lcom/viber/voip/messages/controller/a/ad;->g:Lcom/viber/jni/LocationInfo;

    iput-object p11, p0, Lcom/viber/voip/messages/controller/a/ad;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 46
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/ad;->i:Lcom/viber/voip/messages/controller/a/ac;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/a/ac;->a(Lcom/viber/voip/messages/controller/a/ac;)[Lcom/viber/voip/messages/controller/a/a;

    move-result-object v12

    array-length v13, v12

    const/4 v0, 0x0

    move v11, v0

    :goto_0
    if-ge v11, v13, :cond_0

    aget-object v0, v12, v11

    .line 47
    iget-wide v1, p0, Lcom/viber/voip/messages/controller/a/ad;->a:J

    iget-object v3, p0, Lcom/viber/voip/messages/controller/a/ad;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/viber/voip/messages/controller/a/ad;->c:Ljava/lang/String;

    iget-wide v5, p0, Lcom/viber/voip/messages/controller/a/ad;->d:J

    iget v7, p0, Lcom/viber/voip/messages/controller/a/ad;->e:I

    iget v8, p0, Lcom/viber/voip/messages/controller/a/ad;->f:I

    iget-object v9, p0, Lcom/viber/voip/messages/controller/a/ad;->g:Lcom/viber/jni/LocationInfo;

    iget-object v10, p0, Lcom/viber/voip/messages/controller/a/ad;->h:Ljava/lang/String;

    invoke-virtual/range {v0 .. v10}, Lcom/viber/jni/PhoneControllerDelegateAdapter;->onTextReceived(JLjava/lang/String;Ljava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;)Z

    .line 46
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method

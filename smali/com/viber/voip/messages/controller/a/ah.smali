.class Lcom/viber/voip/messages/controller/a/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:[Lcom/viber/jni/GroupUserInfo;

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:Lcom/viber/voip/messages/controller/a/ac;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/ac;IJLjava/lang/String;[Lcom/viber/jni/GroupUserInfo;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/ah;->g:Lcom/viber/voip/messages/controller/a/ac;

    iput p2, p0, Lcom/viber/voip/messages/controller/a/ah;->a:I

    iput-wide p3, p0, Lcom/viber/voip/messages/controller/a/ah;->b:J

    iput-object p5, p0, Lcom/viber/voip/messages/controller/a/ah;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/viber/voip/messages/controller/a/ah;->d:[Lcom/viber/jni/GroupUserInfo;

    iput p7, p0, Lcom/viber/voip/messages/controller/a/ah;->e:I

    iput p8, p0, Lcom/viber/voip/messages/controller/a/ah;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 232
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/ah;->g:Lcom/viber/voip/messages/controller/a/ac;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/a/ac;->a(Lcom/viber/voip/messages/controller/a/ac;)[Lcom/viber/voip/messages/controller/a/a;

    move-result-object v9

    array-length v10, v9

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v10, :cond_0

    aget-object v0, v9, v8

    .line 233
    iget v1, p0, Lcom/viber/voip/messages/controller/a/ah;->a:I

    iget-wide v2, p0, Lcom/viber/voip/messages/controller/a/ah;->b:J

    iget-object v4, p0, Lcom/viber/voip/messages/controller/a/ah;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/viber/voip/messages/controller/a/ah;->d:[Lcom/viber/jni/GroupUserInfo;

    iget v6, p0, Lcom/viber/voip/messages/controller/a/ah;->e:I

    iget v7, p0, Lcom/viber/voip/messages/controller/a/ah;->f:I

    invoke-virtual/range {v0 .. v7}, Lcom/viber/jni/PhoneControllerDelegateAdapter;->onGroupInfo(IJLjava/lang/String;[Lcom/viber/jni/GroupUserInfo;II)V

    .line 232
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 235
    :cond_0
    return-void
.end method

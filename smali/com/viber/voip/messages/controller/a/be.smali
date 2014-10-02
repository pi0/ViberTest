.class Lcom/viber/voip/messages/controller/a/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Lcom/viber/jni/RecoveryGroupInfo;

.field final synthetic b:[Lcom/viber/jni/PublicGroupInfo;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Z

.field final synthetic g:Lcom/viber/voip/messages/controller/a/ac;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/ac;[Lcom/viber/jni/RecoveryGroupInfo;[Lcom/viber/jni/PublicGroupInfo;Ljava/lang/String;IIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 531
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/be;->g:Lcom/viber/voip/messages/controller/a/ac;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/a/be;->a:[Lcom/viber/jni/RecoveryGroupInfo;

    iput-object p3, p0, Lcom/viber/voip/messages/controller/a/be;->b:[Lcom/viber/jni/PublicGroupInfo;

    iput-object p4, p0, Lcom/viber/voip/messages/controller/a/be;->c:Ljava/lang/String;

    iput p5, p0, Lcom/viber/voip/messages/controller/a/be;->d:I

    iput p6, p0, Lcom/viber/voip/messages/controller/a/be;->e:I

    iput-boolean p7, p0, Lcom/viber/voip/messages/controller/a/be;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 535
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/be;->g:Lcom/viber/voip/messages/controller/a/ac;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/a/ac;->a(Lcom/viber/voip/messages/controller/a/ac;)[Lcom/viber/voip/messages/controller/a/a;

    move-result-object v8

    array-length v9, v8

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v0, v8, v7

    .line 536
    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/be;->a:[Lcom/viber/jni/RecoveryGroupInfo;

    iget-object v2, p0, Lcom/viber/voip/messages/controller/a/be;->b:[Lcom/viber/jni/PublicGroupInfo;

    iget-object v3, p0, Lcom/viber/voip/messages/controller/a/be;->c:Ljava/lang/String;

    iget v4, p0, Lcom/viber/voip/messages/controller/a/be;->d:I

    iget v5, p0, Lcom/viber/voip/messages/controller/a/be;->e:I

    iget-boolean v6, p0, Lcom/viber/voip/messages/controller/a/be;->f:Z

    invoke-virtual/range {v0 .. v6}, Lcom/viber/jni/PhoneControllerDelegateAdapter;->onRecoverGroups([Lcom/viber/jni/RecoveryGroupInfo;[Lcom/viber/jni/PublicGroupInfo;Ljava/lang/String;IIZ)V

    .line 535
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 538
    :cond_0
    return-void
.end method

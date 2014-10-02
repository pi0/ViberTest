.class Lcom/viber/voip/messages/controller/a/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Lcom/viber/jni/PGLatestParams;

.field final synthetic b:J

.field final synthetic c:Lcom/viber/voip/messages/controller/a/ac;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/ac;[Lcom/viber/jni/PGLatestParams;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/ak;->c:Lcom/viber/voip/messages/controller/a/ac;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/a/ak;->a:[Lcom/viber/jni/PGLatestParams;

    iput-wide p3, p0, Lcom/viber/voip/messages/controller/a/ak;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 271
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/ak;->c:Lcom/viber/voip/messages/controller/a/ac;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/a/ac;->a(Lcom/viber/voip/messages/controller/a/ac;)[Lcom/viber/voip/messages/controller/a/a;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 272
    iget-object v4, p0, Lcom/viber/voip/messages/controller/a/ak;->a:[Lcom/viber/jni/PGLatestParams;

    iget-wide v5, p0, Lcom/viber/voip/messages/controller/a/ak;->b:J

    invoke-virtual {v3, v4, v5, v6}, Lcom/viber/jni/PhoneControllerDelegateAdapter;->onPublicGroupsUpdated([Lcom/viber/jni/PGLatestParams;J)V

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_0
    return-void
.end method

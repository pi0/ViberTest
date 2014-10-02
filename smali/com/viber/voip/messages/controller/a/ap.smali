.class Lcom/viber/voip/messages/controller/a/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lcom/viber/voip/messages/controller/a/ac;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/ac;JZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/ap;->d:Lcom/viber/voip/messages/controller/a/ac;

    iput-wide p2, p0, Lcom/viber/voip/messages/controller/a/ap;->a:J

    iput-boolean p4, p0, Lcom/viber/voip/messages/controller/a/ap;->b:Z

    iput-boolean p5, p0, Lcom/viber/voip/messages/controller/a/ap;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 324
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/ap;->d:Lcom/viber/voip/messages/controller/a/ac;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/a/ac;->a(Lcom/viber/voip/messages/controller/a/ac;)[Lcom/viber/voip/messages/controller/a/a;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 325
    iget-wide v4, p0, Lcom/viber/voip/messages/controller/a/ap;->a:J

    iget-boolean v6, p0, Lcom/viber/voip/messages/controller/a/ap;->b:Z

    iget-boolean v7, p0, Lcom/viber/voip/messages/controller/a/ap;->c:Z

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/viber/jni/PhoneControllerDelegateAdapter;->onChangeGroupSettingsReply(JZZ)V

    .line 324
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 327
    :cond_0
    return-void
.end method

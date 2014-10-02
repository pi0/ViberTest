.class Lcom/viber/voip/messages/controller/a/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/viber/voip/messages/controller/a/ac;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/ac;Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/ag;->d:Lcom/viber/voip/messages/controller/a/ac;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/a/ag;->a:Ljava/lang/String;

    iput p3, p0, Lcom/viber/voip/messages/controller/a/ag;->b:I

    iput p4, p0, Lcom/viber/voip/messages/controller/a/ag;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 219
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/ag;->d:Lcom/viber/voip/messages/controller/a/ac;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/a/ac;->a(Lcom/viber/voip/messages/controller/a/ac;)[Lcom/viber/voip/messages/controller/a/a;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 220
    iget-object v4, p0, Lcom/viber/voip/messages/controller/a/ag;->a:Ljava/lang/String;

    iget v5, p0, Lcom/viber/voip/messages/controller/a/ag;->b:I

    iget v6, p0, Lcom/viber/voip/messages/controller/a/ag;->c:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/viber/jni/PhoneControllerDelegateAdapter;->onValidatePublicGroupUri(Ljava/lang/String;II)V

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    :cond_0
    return-void
.end method

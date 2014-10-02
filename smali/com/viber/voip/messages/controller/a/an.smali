.class Lcom/viber/voip/messages/controller/a/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/viber/voip/messages/controller/a/ac;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/ac;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/an;->b:Lcom/viber/voip/messages/controller/a/ac;

    iput p2, p0, Lcom/viber/voip/messages/controller/a/an;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 311
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/an;->b:Lcom/viber/voip/messages/controller/a/ac;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/a/ac;->a(Lcom/viber/voip/messages/controller/a/ac;)[Lcom/viber/voip/messages/controller/a/a;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 312
    iget v4, p0, Lcom/viber/voip/messages/controller/a/an;->a:I

    invoke-virtual {v3, v4}, Lcom/viber/jni/PhoneControllerDelegateAdapter;->onGetRecentMessagesEnded(I)V

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    :cond_0
    return-void
.end method

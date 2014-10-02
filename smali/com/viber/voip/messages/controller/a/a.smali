.class public abstract Lcom/viber/voip/messages/controller/a/a;
.super Lcom/viber/jni/PhoneControllerDelegateAdapter;
.source "SourceFile"


# instance fields
.field protected a:Z

.field protected b:Lcom/viber/jni/PhoneControllerWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerDelegateAdapter;-><init>()V

    .line 14
    invoke-static {}, Lcom/viber/voip/j/a;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/messages/controller/a/a;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(ZI)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26
    if-nez p1, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 31
    :goto_0
    return v0

    .line 28
    :cond_0
    if-nez p2, :cond_1

    .line 29
    const/4 v0, 0x1

    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public a(J)V
    .locals 0
    .parameter

    .prologue
    .line 37
    return-void
.end method

.method public a(Lcom/viber/jni/PhoneControllerWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/a;->b:Lcom/viber/jni/PhoneControllerWrapper;

    .line 19
    return-void
.end method

.method public a(Ljava/util/Set;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/messages/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    return-void
.end method

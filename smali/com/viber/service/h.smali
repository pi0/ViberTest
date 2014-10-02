.class Lcom/viber/service/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;


# instance fields
.field final synthetic a:Lcom/viber/jni/connection/ConnectionListener;

.field final synthetic b:Lcom/viber/jni/connection/ConnectionDelegate;

.field final synthetic c:Lcom/viber/service/f;


# direct methods
.method constructor <init>(Lcom/viber/service/f;Lcom/viber/jni/connection/ConnectionListener;Lcom/viber/jni/connection/ConnectionDelegate;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/viber/service/h;->c:Lcom/viber/service/f;

    iput-object p2, p0, Lcom/viber/service/h;->a:Lcom/viber/jni/connection/ConnectionListener;

    iput-object p3, p0, Lcom/viber/service/h;->b:Lcom/viber/jni/connection/ConnectionDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialized(Lcom/viber/jni/controller/PhoneController;)V
    .locals 4
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/viber/service/h;->a:Lcom/viber/jni/connection/ConnectionListener;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/viber/jni/connection/ConnectionDelegate;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/viber/service/h;->b:Lcom/viber/jni/connection/ConnectionDelegate;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/viber/jni/connection/ConnectionListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 50
    return-void
.end method

.class Lcom/viber/voip/util/bx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/PhoneControllerReadyListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/util/bw;


# direct methods
.method constructor <init>(Lcom/viber/voip/util/bw;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/viber/voip/util/bx;->a:Lcom/viber/voip/util/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ready(Lcom/viber/jni/controller/PhoneController;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/viber/voip/util/bx;->a:Lcom/viber/voip/util/bw;

    invoke-static {v0}, Lcom/viber/voip/util/bw;->a(Lcom/viber/voip/util/bw;)V

    .line 43
    return-void
.end method

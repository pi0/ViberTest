.class Lcom/viber/service/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;


# instance fields
.field final synthetic a:Lcom/viber/service/p;


# direct methods
.method constructor <init>(Lcom/viber/service/p;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/viber/service/q;->a:Lcom/viber/service/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialized(Lcom/viber/jni/controller/PhoneController;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    invoke-interface {p1}, Lcom/viber/jni/controller/PhoneController;->sendKA()V

    .line 209
    return-void
.end method
